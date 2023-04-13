from flask import Flask, render_template, request, redirect,session
from flask_mysqldb import MySQL
import yaml
import MySQLdb.cursors
from datetime import date

app = Flask(__name__)

# Configure db
# db = yaml.load(open('db.yaml'))
# app.config['MYSQL_HOST'] = db['mysql_host']
# app.config['MYSQL_USER'] = db['mysql_user']
# app.config['MYSQL_PASSWORD'] = db['mysql_password']
# app.config['MYSQL_DB'] = db['mysql_db']
app.secret_key = 'ylaundry_management_system'

app.config['MYSQL_HOST'] = '127.0.0.1'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'mbri29miqu'
app.config['MYSQL_DB'] = 'lms'

mysql = MySQL(app)

@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Fetch form data
        userDetails = request.form
        password = userDetails['password']
        email = userDetails['email']
        cur = mysql.connection.cursor()
        cur.execute("select * from user where email_id = % s and password=% s LOCK IN SHARE MODE",\
                    (email,password))
        account = cur.fetchone()
        cur.execute("COMMIT")
        if account:
            session['loggedin'] = True
            session['id_number'] = account[3]
            session['email_id'] = account[0]
            session['hostel_no'] = account[4]
            return redirect('/homepage_student')
        else:
            cur.execute("select * from college_management where email_id = % s and password=% s  LOCK IN SHARE MODE",(email,password))
            account = cur.fetchone()
            cur.execute("COMMIT")
            if account:
                session['loggedin'] = True
                session['email_id'] = account[0]
                session['p_level'] = account[3]
                return redirect('/homepage_admin')
            else:                
                msg = 'Incorrect username / password !'

        return render_template('index.html')
        
    return render_template('index.html')

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        # Fetch form data
        userDetails = request.form
        password = userDetails['password']
        email = userDetails['email_id']
        hostel = userDetails['hostel']
        phone = userDetails['phone']
        roll_no = userDetails['roll_no']
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM user WHERE 1=0 FOR UPDATE")
        cur.execute("Insert into user values(%s,%s,%s,%s,%s)",(email,phone,password,roll_no,hostel))
        cur.execute("COMMIT")
        mysql.connection.commit()
        session['loggedin'] = True
        session['id_number'] = roll_no
        session['email_id'] = email
        session['hostel_no'] = hostel
        return redirect('/homepage_student')
        
    return render_template('register_page.html')

@app.route('/homepage_admin')
def homepage_admin():
    return render_template('homepage_admin.html')

@app.route('/homepage_student')
def homepage_student():
    return render_template('homepage_student.html')


@app.route('/clothes_status')
def clothes_status():
    cur = mysql.connection.cursor()
    id_1 = session['id_number']
    cur.execute("BEGIN")
    clothes = cur.execute("select * from clothes where id_number = %s  LOCK IN SHARE MODE",(id_1,))
    cur.execute("COMMIT")
    if clothes>0:
        cur.execute("BEGIN")
        cur.execute("select * from clothes where id_number = %s LOCK IN SHARE MODE",(id_1,))
        clothes = cur.fetchone()
        cur.execute("COMMIT")
        return render_template('clothes_status.html',clothes_status=clothes)
    else:
        return render_template('clothes_status.html',clothes_status='None')
    

@app.route('/add_clothes', methods=['GET', 'POST'])
def add_clothes():
    if request.method == 'POST':
        # Fetch form data
        clotheDetails = request.form
        today = date.today()
        cur = mysql.connection.cursor()
        query = cur.execute("select hostel_no from user where id_number = (%s) LOCK IN SHARE MODE",\
                            (clotheDetails['id'],))
        hostel_no = cur.fetchone()
        cur.execute("COMMIT")
        print(hostel_no)
        cur.execute("BEGIN")
        cur.execute("SELECT * FROM clothes WHERE 1=0 FOR UPDATE")
        cur.execute("INSERT INTO clothes VALUES (%s, %s, %s, %s, %s, %s)", \
                                                    (clotheDetails['id'], hostel_no[0], 
                                                   clotheDetails['no_of_clothes'], today, "Washing",
                                                   clotheDetails['torned']) )
        cur.execute("COMMIT")
        mysql.connection.commit()
        
        
        return redirect('/homepage_admin')
        
    return render_template('add_clothes.html')

@app.route('/student_list')
def student_list():
    if session['p_level'] == 1:
        cur = mysql.connection.cursor()
        resultValue = cur.execute("SELECT * FROM user LOCK IN SHARE MODE")
        if resultValue > 0:
            userDetails = cur.fetchall()
            cur.execute("COMMIT")
            return render_template('students_page.html',userDetails=userDetails)
    else:
        cur.execute("COMMIT")
        return redirect('/homepage_admin')
    
@app.route('/complaints')
def complaint_list():
    cur = mysql.connection.cursor()
    resultValue = cur.execute("SELECT * FROM complaint  LOCK IN SHARE MODE")
    if resultValue > 0:
        complaint = cur.fetchall()
        cur.execute("COMMIT")
        return render_template('complaint_list.html',complaints=complaint)
    cur.execute("COMMIT")
    
    
@app.route('/delete', methods=['GET'])
def delete_user():
    user_id = request.args.get('id')
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM user WHERE 1=0 FOR UPDATE")
    cur.execute("DELETE FROM user WHERE email_id = %s",(user_id,))
    cur.execute("COMMIT")
    mysql.connection.commit()
    return redirect('/student_list')

@app.route('/clothes', methods=['GET', 'POST'])
def clothes():
    if request.method == 'POST':
        # Fetch form data
        data = request.form
        date = data['date']
        status = data['status']
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM clothes WHERE 1=0 FOR UPDATE")
        cur.execute("UPDATE clothes SET status = (%s) where date = (%s)",(status,date))
        cur.execute("COMMIT")
        mysql.connection.commit()
        
        return redirect('/clothes')
    
    cur = mysql.connection.cursor()
    resultValue = cur.execute("SELECT * FROM clothes order by date desc LOCK IN SHARE MODE;")
    
    if resultValue > 0:
        clothes = cur.fetchall()
        cur.execute("COMMIT")
        date = cur.execute("SELECT distinct date FROM clothes order by date desc  LOCK IN SHARE MODE;")
        date = cur.fetchall()
        cur.execute("COMMIT")
        return render_template('clothes.html',clothes=clothes,dates = date)
    cur.execute("COMMIT")

@app.route('/delete_cloth', methods=['GET'])
def delete_cloth():
    id_number = request.args.get('id')
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM clothes WHERE 1=0 FOR UPDATE")
    cur.execute("DELETE FROM clothes WHERE id_number = %s",(id_number,))
    cur.execute("COMMIT")
    mysql.connection.commit()
    return redirect('/clothes')

@app.route('/schedule')
def schedule():
    return render_template('Hostel_schedule_page.html')

@app.route('/laundry_facility')
def laundry_facilities():
    return render_template('laundry_facilities.html')

@app.route('/complaint_page', methods=['GET', 'POST'])
def complaint_page():
    if request.method == 'POST':
        # Fetch form data
        complaint = request.form
        complaint_type = complaint['complaint_type']
        if complaint['describe']:
            describe = complaint['describe']
        else:
            describe = "-"
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM complaint WHERE 1=0 FOR UPDATE")
        cur.execute("INSERT INTO complaint (id_number, complain,detail) VALUES (%s, %s, %s)", (session['id_number'], complaint_type, describe))
        cur.execute("COMMIT")
        mysql.connection.commit()
        
        return redirect('/homepage_student')
        
    return render_template('complaint_page.html')

@app.route('/complaint_status')
def complaint_status():
    cur = mysql.connection.cursor()
    id_1 = session['id_number']
    complain = cur.execute("select * from complaint where id_number = %s  LOCK IN SHARE MODE ",(id_1,))
    cur.execute("COMMIT")
    if complain>0:
        cur.execute("select * from complaint where id_number = %s  LOCK IN SHARE MODE",(id_1,))
        complain = cur.fetchone()
        cur.execute("COMMIT")
        return render_template('complaint_status.html',complain_status=complain)
    else:
        return render_template('complaint_status.html',complain_status='None')

if __name__ == '__main__':
    app.run(debug=True)

