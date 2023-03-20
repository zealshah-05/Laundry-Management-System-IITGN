# Laundry Management System IITGN
This is Laundry Management System specially designed for IIT-GN

You can watch the demo of our design here : https://drive.google.com/file/d/17QOLflzjDd_zoCRmfvy6YPpxtyquLg8S/view?usp=share_link


// There is one more directory called "Lib" which we can't able to add but here is the link of it https://drive.google.com/drive/folders/1UvqVq010p6MVA9xQRRCGjeJ7TCmVewXF?usp=share_link


## Problem Statement & Requirements

1. Based on the teams formed, each team is supposed to create a web application of the proposed functionalities in the previous assignments. Each team can be divided into Group G1 and Group G2; G1 is supposed to work on the front-end and G2 on the back-end sections, respectively. You can use Flask + MySQL for developing your WebApp.

2. The web app should support the dynamic execution (The changes done by the user through the web app shall be reflected in the main database and web page also) of the following functions on your database :
- [ ]  INSERT
- [ ]  UPDATE
- [ ]  DELETE
- [ ]  RENAME
- [ ]  WHERE

3. Push it to GitHub and share the link for submission

4. Login page with authentication of users and stakeholders. 


## Tasks

### Responsibility of G1 :

G1 is supposed to design the front end and beautify accordingly using HTML/CSS/JS, you may use any other libraries for the front end, such as Bootstrap or jQuery. But flask is mandatory. 



## Screenshots


### a. Web App with Flask and MySQL Integration
This is a web app that integrates Flask and MySQL and allows for dynamic execution of database functions such as INSERT, UPDATE, DELETE, RENAME, and WHERE clause. The app also includes a login page with user authentication.

### Initial Setup
**1.** Clone the repository from GitHub to your local machine.: git clone **https://github.com/yourusername/your-repository.git**

**2.** Open a terminal window and navigate to the root folder of the project.

**3.** Create a virtual environment using the command **`python3 -m venv env_flask`**

**4.** Activate the virtual environment using the command **`source env_flask/bin/activate`**

**5.** Install the required packages using the command **`pip3 install -r requirements.txt`**

**6.** Set up your MySQL database and update the **config.yml file** with your database credentials.

You can create a MySQL database named **laundry_db** with the following credentials:
- Username: root
- Password: password
- Host: localhost
- Port: 3306

**7.** Import the **laundry_db.sql** file into the database to create the required tables and dummy data.

### Running the App
**8.** Navigate to the root directory of the project and run the app by running the following command: **`python app.py`**

**9.** Open a web browser and enter the following URL: **http://127.0.0.1:5000/**  
**[Might be different based on which port you are running the localhost]**

### b. Screenshots of successful execution of the dynamic operations: 
We are directly show the before and after changes reflected in our concerned table in the web app in this README file.
### 1. Insert:
Before Adding Clothes:
![Insert Before adding clothes](https://user-images.githubusercontent.com/84655836/226204130-2b27c221-777d-4cb2-a551-29eb9c8cc0c4.jpeg)


After Adding clothes:
![After Adding clothes](https://user-images.githubusercontent.com/84655836/226204299-f52ea1fe-3a8a-41f7-852a-ee09be73c53c.jpeg)

Before Adding complaint:
![Before Adding complaint](https://user-images.githubusercontent.com/84655836/226204338-5ba35785-0608-4245-b371-a14594ff57d2.jpeg)

After adding complaint:\
After inserting complaint, it got reflected in admin complaint page.
![After inserting complaint ](https://user-images.githubusercontent.com/84655836/226204395-127e4d46-5b9f-47eb-aab4-727d5c15d670.jpeg)
Similarly there are several insertions that can happen in our system.

### 2. Delete:
Before Deleting the account of "alfred@comcast.net" at admin side
![Before Deleting the account of alfredcomcastnet at admin side](https://user-images.githubusercontent.com/84655836/226205250-6c630048-3292-444e-af50-df7eba870efe.jpeg)

After deleting "alfred@comcast.net" it is not showed in list of students.
![After deleting alfred@comcast net it is not showed in list of students](https://user-images.githubusercontent.com/84655836/226205281-dfd34e18-a003-44ff-9ab5-3237f09e945c.jpeg)

Before deleting the record of clothes of student "24110077"
![Before deleting the record of clothes of student 24110077](https://user-images.githubusercontent.com/84655836/226205423-23c34e1d-94e2-46b6-a442-80bbabe77f0e.jpeg)

After deleting "24110077", it's record got deleted from list.
![After deleting 24110077 , it's record got deleted from list](https://user-images.githubusercontent.com/84655836/226205440-a3e8c20d-db13-44d3-a069-f0eb5c652520.jpeg)

### 3. Update:
Before updating status:
![After deleting 24110077 , it's record got deleted from list](https://user-images.githubusercontent.com/84655836/226213012-f4356c4a-54f6-4178-91d9-d3e862f55d81.jpeg)

![After updating the status of clothes](https://user-images.githubusercontent.com/84655836/226213024-3129f1db-b856-4c21-8818-b1d13c47c5ea.jpeg)

After Updating :\
the status got changed for the record of date "2023-03-19"
![Finally washed](https://user-images.githubusercontent.com/84655836/226213555-ef70adeb-27ed-4ebf-afbf-f442fe7bf2d2.jpeg)

### 4. Rename: 
Our system doesn't require any rename operation to do so we haven't implemented/shown it and there is no point to rename table, database or column.

### 5. For where clause:

Login Page looks like:
![login page](https://user-images.githubusercontent.com/84655836/226213896-395db10d-5097-4079-82d5-8043cc6e792c.jpeg)
In login page where clause is used to validate user and to signed in user and store the session of user

```
@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        # Fetch form data
        userDetails = request.form
        password = userDetails['password']
        email = userDetails['email']
        cur = mysql.connection.cursor()
        cur.execute("select * from user where email_id = % s and password=% s ",(email,password))
        account = cur.fetchone()
        if account:
            session['loggedin'] = True
            session['id_number'] = account[3]
            session['email_id'] = account[0]
            session['hostel_no'] = account[4]
            return redirect('/homepage_student')
        else:
            cur.execute("select * from college_management where email_id = % s and password=% s",(email,password))
            account = cur.fetchone()
            if account:
                session['loggedin'] = True
                session['email_id'] = account[0]
                session['p_level'] = account[3]
                return redirect('/homepage_admin')
            else:                
                msg = 'Incorrect username / password !'

        return render_template('index.html')
        
    return render_template('index.html')
```
### Where clause 2:

In cloth status page of student , where clause is used to only show the status of cloth of that particular user.
![Student Clothes status](https://user-images.githubusercontent.com/84655836/226382238-bb2854db-a5be-4246-b253-e031a8108b11.jpeg)

```
@app.route('/add_clothes', methods=['GET', 'POST'])
def add_clothes():
    if request.method == 'POST':
        # Fetch form data
        clotheDetails = request.form
        today = date.today()
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO clothes (id_number, room_no, no_of_clothes, date, status) VALUES (%s, %s, %s, %s, %s)", (clotheDetails['id'], clotheDetails['room_no'], clotheDetails['no_of_clothes'], today, "Washing"))
        mysql.connection.commit()
        
        return redirect('/homepage_admin')
        
    return render_template('add_clothes.html')
```
## Contribution : 

G1: \
Login/ Register :             Denish \
Homepage Student:             Zeal Shah \
Cloth status:                 Denish \
Complaint Add page:           Simran \
Hostel schedule page:         Dishant \
Complaint status check page : Distant \
Homepage Admin:               Zeal Shah \
List of clothes page:         Argha \
Add Clothes:                  Denish \
Complaints page:              Dishant \
Student list page:            Denish \
README.md :                   Simran 

G2: 
Zeal Shah 

G3:
Zeal Shah, Simran, Argha 
