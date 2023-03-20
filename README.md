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

G1 is supposed to design the front end and beautify accordingly using _HTML/CSS/JS_, you may use any other libraries for the front end, such as _Bootstrap_ or _jQuery_. But flask is mandatory. 



## Screenshots

### Users Side

- **Sign-In Page** : Users will use this page to Sign-In to their account, using their corresponding Email-Id and Password.

![Sign-In](https://user-images.githubusercontent.com/92508807/226405572-3af1d38b-b194-4ed7-b4a7-63e08e7d107f.jpg)

- **Sign-Up Page** : New users will be redirected to this page, to create a new account for Laundry Service.

![Sign-Up](https://user-images.githubusercontent.com/92508807/226405567-a8ec8688-2da2-4dde-b2b4-3ed4f3772977.jpg)

- **Homepage** : Users will be greeted with this homepage. With 4 options on the top ribbon.

![Student_Homepage](https://user-images.githubusercontent.com/92508807/226405558-3b689355-df2e-4cd2-8247-436a82cd6a6b.jpg)

- **Clothes-Status** : Users can check the status of their clothes, by clicking on the option, `Clothes-Check` from the top ribbon. This page shows the status of the submitted clothes of respective users.

![Cloth_Status](https://user-images.githubusercontent.com/92508807/226405555-c10643e8-dddb-4d69-b4a2-b02c9c4f2dd3.jpg)

- **Complaint** : Users can register their complaint for the clothes they have submitted for washing. Users can access this page by clicking on the link `here` from the Clothes-Status Page

![Cloth_Complaint](https://user-images.githubusercontent.com/92508807/226405534-245c3cd1-bec3-4826-a13c-514750d9a5bb.jpg)

- **Complaint Status Check** : Users can check their status of the complaint issued. Wheather _Pending_ or _Resolved_

![Complaint_Status_Page](https://user-images.githubusercontent.com/92508807/226405515-19388223-006f-4a41-97cb-9458686bcbb3.jpg)

- **Laundry-Schedule** : Users can check their schedule for their laundry submission, of their respective hostels.

![Laundry_Schedule](https://user-images.githubusercontent.com/92508807/226405550-1bac7e1b-4937-4c93-b52a-93c6b6b3fd24.jpg)

### Admin Side

- **Admin Page** : Users with administrative priviledges will be greeted with this homepage, with access to certain actions.

![Admin](https://user-images.githubusercontent.com/92508807/226405528-94b6dfe2-595e-436a-84ae-5e2081bed390.jpg)

- **List of Clothes** : Admins can access the list of clothes that have been submitted by the users, by clicking on the option `Clothes` from the top ribbon. Furthermore the admins can change the statuses of the clothes gone for _Washing_ or _Washed_ or _Arrived_.

![List_of_clothes](https://user-images.githubusercontent.com/92508807/226405542-cf09016a-2b7b-4815-8c1d-56d907b0d8a4.jpg)

- **Clothes Add** : Admins can add clothes manually through this option, available from the top ribbon.

![Cloth_Add](https://user-images.githubusercontent.com/92508807/226405523-561532a0-418a-40c3-bc5c-6967d3d1842c.jpg)

- **Complaint Page** : Admins can check the complaints and its statuses (With any remarks) registered by the users through this page. 

![Complaint_Page](https://user-images.githubusercontent.com/92508807/226405578-4476c800-b944-4c1f-9cb1-35281dc08932.jpg)

- **Students** : Admins can check each users submission through the option `Students` from the top ribbon.

![List_of_Student](https://user-images.githubusercontent.com/92508807/226405563-147a4579-1f05-41a1-b3d5-f14ccdb89f62.jpg)

### Responsibility of G2 :

G2 has to work on integrating MySQL in WebApp. This group works on the proper working of the backend.

## Screenshots





### (a). Web App with Flask and MySQL Integration
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

- [ ] G1 :
- Login/ Register :             `Denish Trivedi` 
- Homepage Student:             `Zeal Shah` 
- Cloth status:                 `Denish Trivedi` 
- Complaint Add page:           `Simran` 
- Hostel schedule page:         `Dishant Patel` 
- Complaint status check page : `Dishant Patel` 
- Homepage Admin:               `Zeal Shah` 
- List of clothes page:         `Argha` 
- Add Clothes:                  `Denish Trivedi` 
- Complaints page:              `Dishant Patel`
- Student list page:            `Denish Trivedi` 
- README.md :                   `Simran`, `Argha`

- [ ] **G2** : `Zeal Shah`

- [ ] **G3** : `Zeal Shah`, `Simran`, `Argha` 
