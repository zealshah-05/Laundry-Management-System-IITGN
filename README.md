# Laundry-Management-System-IITGN

This Repository on *Laundry Management System* is specifically designed for the community members of IIT Gandhinagar.

# Contributors

- *Zeal Shah* `zeal.shah@iitgn.ac.in`
- *Simran* `simran.saini@iitgn.ac.in`
- *Argha Sardar* `sardarargha@iitgn.ac.in`
- *Denish Trivedi* `denishtrivedi@iitgn.ac.in`
- *Dishant Patel* `patel.dishant@iitgn.ac.in`
- *Tamma Sowmya Sri* `tamma.s@iitgn.ac.in`
- *Ayush Agarwal* `ayush_agrawal@iitgn.ac.in`
- *Abhigyan Martin Ninama* `abhigyan.mn@iitgn.ac.in`

# Initial Setup

**1.** Clone the repository from GitHub to your local machine.: git clone **https://github.com/yourusername/your-repository.git**

**2.** Open a terminal window and navigate to the root folder of the project.

**3.** Create a virtual environment using the command **`python3 -m venv env_flask`**

**4.** Activate the virtual environment using the command **`source env_flask/bin/activate`**

**5.** Install the required packages using the command **`pip3 install -r requirements.txt`**

**6.** Set up your MySQL database and update the **config.yml file** with your database credentials.

You can create a MySQL database named **laundry_db** with the following credentials:
- _Username_ : `root`
- _Password_ : `password`
- _Host_ : `localhost`
- _Port_ : `3306`

**7.** Import the **laundry_db.sql** file into the database to create the required tables and dummy data.

### Running the App

**8.** Navigate to the root directory of the project and run the app by running the following command: **`python app.py`**

**9.** Open a web browser and enter the following URL: **http://127.0.0.1:5000/**  
**[Might be different based on which port you are running the localhost]**

Watch the Demo here : https://drive.google.com/file/d/17QOLflzjDd_zoCRmfvy6YPpxtyquLg8S/view?usp=share_link

There is one more directory called "Lib" which we can't able to add but here is the link of it https://drive.google.com/drive/folders/1UvqVq010p6MVA9xQRRCGjeJ7TCmVewXF?usp=share_link

# Problem Statement & Requirements

1. Based on the teams formed, each team is supposed to create a web application of the proposed functionalities in the previous assignments. Each team can be divided into Group G1 and Group G2; G1 is supposed to work on the front-end and G2 on the back-end sections, respectively. You can use Flask + MySQL for developing your WebApp.

2. The web app should support the dynamic execution (The changes done by the user through the web app shall be reflected in the main database and web page also) of the following functions on your database :
- [ ]  INSERT
- [ ]  UPDATE
- [ ]  DELETE
- [ ]  RENAME
- [ ]  WHERE

3. Push it to GitHub and share the link for submission

4. Login page with authentication of users and stakeholders. 

# Tasks 1

## 3.1 Responsibility of G1 :

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

## 3.2 Responsibility of G2 :

G2 has to work on integrating MySQL in WebApp. This group works on the proper working of the backend.

## Screenshots

- Query for Login Authentication, for both User side and Admin side.

![WhatsApp Image 2023-03-20 at 23 10 31](https://user-images.githubusercontent.com/92508807/226425214-0c11ba32-04f2-4dcf-9626-4ef4f3488d44.jpg)

- Query for Sign-Up for the New users.

![WhatsApp Image 2023-03-20 at 23 10 57](https://user-images.githubusercontent.com/92508807/226425210-ec59ef1c-9d26-4b4b-b2b0-0e1f931dd393.jpg)

- Query to check the Status of the Clothes, i.e. Washed, Washing and Arrived

![3](https://user-images.githubusercontent.com/92508807/226425206-78201664-e9d8-4ad0-bfb0-3f4b182971da.jpg)

- Query for the Admin side, which will let some previledged users to add clothes for taking into account for washing.

![4](https://user-images.githubusercontent.com/92508807/226425200-6f97744b-2513-4eb3-a15d-0511f1bfe7f2.jpg)

- Query for the Admin side which will display all users who have submitted their clothes for washing. 

![5](https://user-images.githubusercontent.com/92508807/226425195-42cfc022-f10e-4f1d-83dd-dbeafadca604.jpg)

- Query for the Admin side which will display all the currently raised complaints by the users.

![6](https://user-images.githubusercontent.com/92508807/226425193-06a46f12-2de8-4d50-bd70-8dae8d5456bf.jpg)

- Query to delete the account of a perticular user.

![7](https://user-images.githubusercontent.com/92508807/226425190-0b04cf51-3219-4ff0-8b98-e13463c6e1eb.jpg)

- Query to update status of the clothes date wise, i.e. it changes the status of all clothes (Washing to Washed) which are from a slot which has been completely washed.

![8](https://user-images.githubusercontent.com/92508807/226425187-6572af69-8ce9-4151-a932-db2987359adc.jpg)

- Query to delete a particular selected cloth's entry.

![9](https://user-images.githubusercontent.com/92508807/226425184-7853dc41-5b4a-452e-be20-bfe070058dd1.jpg)

- Query to register any complaint, raised by users.

![10](https://user-images.githubusercontent.com/92508807/226425181-853113e9-b622-4e9a-be1c-24059b77bba2.jpg)

- Query to check the Status of complaint from a perticular user

![11](https://user-images.githubusercontent.com/92508807/226425176-ba8fe019-75df-4b1c-90f3-c6f4a428fcae.jpg)

## 3.3 Responsibility of G1 and G2 :

### (a). Web App with Flask and MySQL Integration
This is a web app that integrates Flask and MySQL and allows for dynamic execution of database functions such as INSERT, UPDATE, DELETE, RENAME, and WHERE clause. The app also includes a login page with user authentication.

### 1. Insert:
Before Adding Clothes:
![Insert Before adding clothes](https://user-images.githubusercontent.com/84655836/226204130-2b27c221-777d-4cb2-a551-29eb9c8cc0c4.jpeg)


After Adding clothes:
![After Adding clothes](https://user-images.githubusercontent.com/84655836/226204299-f52ea1fe-3a8a-41f7-852a-ee09be73c53c.jpeg)

Before Adding complaint:
![Before Adding complaint](https://user-images.githubusercontent.com/84655836/226204338-5ba35785-0608-4245-b371-a14594ff57d2.jpeg)

After adding complaint:\
- After inserting complaint, it got reflected in admin complaint page.

![After inserting complaint ](https://user-images.githubusercontent.com/84655836/226204395-127e4d46-5b9f-47eb-aab4-727d5c15d670.jpeg)
Similarly there are several insertions that can happen in our system.

### 2. Delete:
- Before Deleting the account of "alfred@comcast.net" at admin side.

![Before Deleting the account of alfredcomcastnet at admin side](https://user-images.githubusercontent.com/84655836/226205250-6c630048-3292-444e-af50-df7eba870efe.jpeg)

- After deleting "alfred@comcast.net" it is not showed in list of students.

![After deleting alfred@comcast net it is not showed in list of students](https://user-images.githubusercontent.com/84655836/226205281-dfd34e18-a003-44ff-9ab5-3237f09e945c.jpeg)

- Before deleting the record of clothes of student "24110077"

![Before deleting the record of clothes of student 24110077](https://user-images.githubusercontent.com/84655836/226205423-23c34e1d-94e2-46b6-a442-80bbabe77f0e.jpeg)

- After deleting "24110077", it's record got deleted from list.

![After deleting 24110077 , it's record got deleted from list](https://user-images.githubusercontent.com/84655836/226205440-a3e8c20d-db13-44d3-a069-f0eb5c652520.jpeg)

### 3. Update:
- Before updating status:

![After deleting 24110077 , it's record got deleted from list](https://user-images.githubusercontent.com/84655836/226213012-f4356c4a-54f6-4178-91d9-d3e862f55d81.jpeg)

![After updating the status of clothes](https://user-images.githubusercontent.com/84655836/226213024-3129f1db-b856-4c21-8818-b1d13c47c5ea.jpeg)

- After Updating :
The status got changed for the record of date "2023-03-19"

![Finally washed](https://user-images.githubusercontent.com/84655836/226213555-ef70adeb-27ed-4ebf-afbf-f442fe7bf2d2.jpeg)

### 4. Rename: 

- Our system doesn't require any rename operation to do so we haven't implemented/shown it and there is no point to rename table, database or column.

#### Dummy Rename Query 

- Before Rename

![WhatsApp Image 2023-03-20 at 23 48 16](https://user-images.githubusercontent.com/92508807/226431806-1a25af12-6383-4aec-97ac-56b318dffbbb.jpg)

![Rena](https://user-images.githubusercontent.com/92508807/226431858-0e168685-2902-4f37-8210-cb6524a4111f.jpg)

- After Rename

![WhatsApp Image 2023-03-20 at 23 48 31](https://user-images.githubusercontent.com/92508807/226432017-2760b7ec-92ed-4016-b155-4daf814e4da8.jpg)

![WhatsApp Image 2023-03-20 at 23 48 32](https://user-images.githubusercontent.com/92508807/226432050-1bc4f738-4255-4b83-95fe-89986a72a7fb.jpg)

### 5. For where clause:

- Login Page looks like:

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

-In cloth status page of student , where clause is used to only show the status of cloth of that particular user.

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

# Tasks 2

## 4.1 Responsibility of G1:

**1.** The G1 takes two feedbacks from the stakeholders, one initial feedback (before 30th March 11:59 PM), and then makes relevant changes as suggested per the first feedback, then final feedback (before 10th April 11:59 PM) post changes. The write-up/documentation should have screenshots before the first feedback, after the first feedback, and after the second feedback.

### We have taken feedbacks from stakeholders to improve this system. All relevant changes recommended by the stakeholders are implemented in **G2: 2.** 

### First Feedback

**1.** Not all admins should be able to see information of students and thus delete the details of a student. For example, Laundry staff can not have this much of privilege of viewing and changing the student data but College Management should have.

**2.** While adding the clothes of a user, there is no need to add **Room Number** as it can be retrieved from the user information from users' roll-number.

**3.** Add an extra page at the student side (View) that covers other Laundry facilities provided in hostels. (eg. Smart laundry system at E Common room etc.)

### Final Feedback:

**1.** While adding a student's clothes, a field should correspond to checking whether the provided piece of clothing is already torn.
Sometimes, when students give their clothes for laundry, they include torn clothes. This can result in complaints from the student when the clothes are returned, stating that their clothes have been damaged. Therefore, it is necessary to address this issue.

### Feedbacks are given by Dhiraj Bhai (dhirajku8298@gmail.com) from Laundry Service Provider.

#### 2. Attach screenshots of different views [along with a write-up on their privileges] of the database as seen by different classes of users.

#### A.	Students' View:

**a.**	Students can see cloth-status and also add a complaint for laundry.

**b.**	Students can see the Hostel schedule for picking-up clothes.

**c.**	Students can see their complaint's status.

![image](https://user-images.githubusercontent.com/84655836/232011622-032c1e79-8aa3-4f67-b702-e3c28cfd9bfd.png)

#### B.	Admin View: Low Permission level workers

**a.**	Can see clothes and can also delete entry for clothes.

**b.**	Can insert the detail of student clothes.

**c.**	Can see the complaints.

![image](https://user-images.githubusercontent.com/84655836/232012151-cc707b5f-2c38-449e-881c-4d2ecd95fb89.png)

#### C.	Admin View: High Permission level workers 

**a.**	Can see clothes and can also delete entry for clothes.

**b.**	Can insert the detail of student clothes.

**c.**	Can see the complaints.

**d.**	Can see the details of student and also admin (with High permission level) can delete the record of student.

![image](https://user-images.githubusercontent.com/84655836/232012596-156bdeaa-41a1-4a14-9f72-19f0dac85381.png)

## 4.2 Responsibility of G2:

**1.** Concurrent multi-user access: Multiple users with different roles can access and update the database concurrently. In such a scenario, the same item can not be updated by two different users. For example, locks can be applied to tables in MySQL.

To acquire a lock in Flask in MySQL, we have two locks :

**A.**	Share lock for reading :

 ![image](https://user-images.githubusercontent.com/84655836/232013633-1a922f06-a763-477b-ae9c-c525a4f6c07b.png)

- By adding “LOCK IN SHARE MODE” in select query we can acquire a shared lock and to release a lock we execute "Commit" statement that releases lock acquired by the current transaction.

**B.**	Exclusive lock for reading and writing:

 ![image](https://user-images.githubusercontent.com/84655836/232014225-590880f2-dd58-4398-a438-c34904ab7d70.png)

- By using “FOR UPDATE” in select query we can acquire the Exclusive lock and can read and write to that table and to release a lock we execute "Commit" statement that releases lock acquired by the current transaction.

In this way we have added this to all our queries.

### 2. Implement the changes in the database as per the feedback received from stakeholders.

### Initial feedback: Recommendation 1 

- When a junior member of Laundry staff (not Management) used to log in:

![image](https://user-images.githubusercontent.com/84655836/232070991-3ca8ae06-9ce4-4b2e-b93a-482e743966ca.png)

- They could see the info of students and can also delete their info.

![image](https://user-images.githubusercontent.com/84655836/232071455-09290af8-c8de-4338-b99d-cdd70c73adee.png)

![image](https://user-images.githubusercontent.com/84655836/232071744-0b1c6a52-cd33-44ea-ba66-c27c5556c1ce.png)

- We added a permission level where 1 means all permissions and 2 means minimum permissions , All permissions (p_level=1) is given to Management and Minimum permissions (p_level=2) are given to laundry staff.

![image](https://user-images.githubusercontent.com/84655836/232071980-8c0e8752-6856-4f12-8b0c-e0373493535b.png)

- At the time of login we store the p_level to the session to use it later for different purpose(s).

![image](https://user-images.githubusercontent.com/84655836/232072096-376d734e-aee5-442f-bc9a-18ce8483e9aa.png)

- Above, I added a condition statement that if p_level is equal to '1' then and only then 'Student' page is implemented or not.

![image](https://user-images.githubusercontent.com/84655836/232072357-b37d06ec-573e-4758-b92a-3d396ab46e86.png)

- We added same conditional statement in app.py file too so that it can not be accessible by typing in URL.

![image](https://user-images.githubusercontent.com/84655836/232072855-c859dd61-8367-496b-a633-1fa32d085a94.png)

- Now 'Student page' in Navigation bar is not displayed because I was logged in as a laundry staff member.

- Now as I did log in with the Management ID, the 'Student' page is visible.

![image](https://user-images.githubusercontent.com/84655836/232074039-9cf99b8b-e0f0-4dfc-b81f-3771434e4564.png)

### Feedback 1 : Recommendation 1 is fulfilled !!

### Feedback 1 : Recommendation 2 

- Before : It is required to add the Room number by student, which already corresponds to student's id number.

![image](https://user-images.githubusercontent.com/84655836/232078038-128c53e9-7234-490a-8bce-3e0234c6adae.png)

- So, I am removing the room_no input field.

![image](https://user-images.githubusercontent.com/84655836/232078221-a69c9ec6-dbf9-4c4b-9b68-952a7fa5dadb.png)

- Below, I included extra query to get the hostel number from id number and using that result's hostel number and then adding the clothes record.

![image](https://user-images.githubusercontent.com/84655836/232078489-a1e80d16-1010-4781-8ad9-61bbe9bb099a.png)

- It works; the room_no field is not there anymore.

![image](https://user-images.githubusercontent.com/84655836/232078923-40bdfac1-3585-413f-8513-d75a37816b98.png)

- The room number in the clothes page is visible after updation.

![image](https://user-images.githubusercontent.com/84655836/232079373-534f8bc1-9352-42f7-a66d-4cda26c5cf7f.png)

### Feedback 1: Recommendation 2 is fulfilled!!

### Feedback 1: Recommendation 3 

- Before : No page informing about in-hostel laundry facility.

![image](https://user-images.githubusercontent.com/84655836/232082400-ca90ef16-926a-4f05-835a-bd0a136b9d61.png)

- We made "Other-Facility" page.

![image](https://user-images.githubusercontent.com/84655836/232082686-e9d9319c-f29d-43ee-b633-cc89cd64cd82.png)

- Now, one can see other laundry options.

![image](https://user-images.githubusercontent.com/84655836/232082929-c4be6421-136f-43ff-a530-efe465ddfd93.png)

### Feedback 1: Recommendation 3 is fulfilled !!

### Final Feedback

- Before: Clothes Page

![image](https://user-images.githubusercontent.com/84655836/232084798-03c4b0b8-d1df-4068-9016-6e43ca7658fe.png)

- Before: Below is the Table structure

![image](https://user-images.githubusercontent.com/84655836/232084930-cb386b34-a8a5-4ac5-a6dc-68c42d830308.png)

- Flask code for adding clothes (Before):

![image](https://user-images.githubusercontent.com/84655836/232085242-c9b448f5-7b7d-4a37-9d4c-4ff7a83a8b06.png)

- After adding an extra field in the table structure as torned_cloth.

![image](https://user-images.githubusercontent.com/84655836/232085456-ebfb5236-4419-43cd-903e-c68a150fba64.png)

![image](https://user-images.githubusercontent.com/84655836/232085796-5b26fcda-a498-41bd-9c2e-24b37553fe08.png)

- I also added a radio-button for torn clothes in add clothes page.

![image](https://user-images.githubusercontent.com/84655836/232086177-2b501f39-4148-4df1-8b42-2285ba9b752f.png)

- Flask code for adding an extra field.

### Final recommendation is fulfilled !!

## 4.3 Responsibility of G1 & G2:    

### 1. Documentation and screenshots of a total of four attacks [SQL Injection and XSS] performed and the defenses against those attacks 

### I. SQL Injection Attacks:

**A.**	In login page if we insert “' or 1=1 –“ in both email and password then we directly get access to system. Because of “or” statement other conditions does not consider.

![image](https://user-images.githubusercontent.com/84655836/232014904-71a96948-6669-4fb2-b4f7-254831eb7227.png)

- After Hitting login button , here we can get access to system.

![image](https://user-images.githubusercontent.com/84655836/232015572-e9269f7f-8312-4732-86c1-227d20b82b8d.png)

(giving the value of first user as email)

#### Solution to this threat is:

- Use parameterized query of Flask to solve this problem.

Before:

![image](https://user-images.githubusercontent.com/84655836/232015834-8b8a41ce-0d7f-4563-aab5-8918ac84ae58.png)

- After adding parameterized query:

![image](https://user-images.githubusercontent.com/84655836/232016030-fadcf0d1-a376-43ef-936a-9c01e7446679.png)

- Now the attack is not possible.

**B.**	In register page, if we insert ```“ '; DROP TABLE temp; -- ”``` in any of field then it will delete the table temp from the database.

![image](https://user-images.githubusercontent.com/84655836/232016398-6920123d-5a1f-4869-88db-969ce01ed273.png)

- It will give error if you click on register, but on Database, this click has deleted table “temp”.

#### Solution to this threat:

- Use parameterize query of flask to solve this problem

Before:

![image](https://user-images.githubusercontent.com/84655836/232016935-858ceb8c-2dd6-4f09-aa31-49c20ad05867.png)

- After adding parameterized query:

![image](https://user-images.githubusercontent.com/84655836/232017031-453999c7-edcf-4697-9092-4e2b04dfc19a.png)

- Now the attack is not possible.

### XSS Attacks:

**A.**	If we register using the Gmail id as ```“<script>alert('XSS attack');</script>”``` and by adding other fields as random then at the time we logged in to the system , we get the alert message as we have displayed user’s email id on homepage so at that time the script will run.

![image](https://user-images.githubusercontent.com/84655836/232020988-a125aa22-f93a-40ff-824e-9b6ed5116d1f.png)

![image](https://user-images.githubusercontent.com/84655836/232021031-39051ef0-b2d7-4201-9493-26491cfa63d4.png)

#### Solution to this issue is:

- Sanitise the input properly that can only accept valid email ids only using the input field as **type=”email”**  will ensure this.

![image](https://user-images.githubusercontent.com/84655836/232021251-0489e121-a48a-4f49-83fc-77ba7bcac23d.png)

- You can also use triggers to validate a perfect email address.

![image](https://user-images.githubusercontent.com/84655836/232021618-35e17dce-24e4-492a-976b-5aee058a22fa.png)

**B.**	At the time of registering the complaint the user can input ```“<script>alert('You are Hacked);</script>”``` this tag in describe field.
And due to this the admin when opens the complaint page get a popup of alert saying “You are Hacked”.

![image](https://user-images.githubusercontent.com/84655836/232021945-38352ec4-dbef-4389-9270-f58f32d314e5.png)

![image](https://user-images.githubusercontent.com/84655836/232021986-abb6b18a-3eb0-41b5-ac7e-47bd11074378.png)

#### Solution to this issue is:

- Sanitise the inputs , here we can use pattern attribute of input field to not accept the “< >” brackets as:

![image](https://user-images.githubusercontent.com/84655836/232022150-fbf3201a-d6cd-4a19-800c-42db73e180cc.png)

- The **pattern** attribute is used to specify a regular expression that the input value must match. In this case, the regular expression ```[^&lt;&gt;]*``` means that any character is allowed except for < and >.

## 2. Show that all the relations and their constraints, finalized after the second feedback, are present and valid as per the ER diagram constructed in Assignment 1.
### Relationships and their applications in website:

| Relation      | Mapping cardinality | Where relationships are utilized    |
| :-----:        |    :----:   |          :---: |
| User and Clothes     | One to one | On the student page, this relationship is utilized for displaying the status of clothes. Each student is able to view only their own clothes, and each clothes entry corresponds to only one student.  |
| User and complaint  | One to many       | On the student page, this relationship is employed for registering laundry-related complaints. Each student is allowed to register only one complaint, and each complaint is associated with only one corresponding student.   |
| College management and complaints   | Partial participation with many to many relationship     | On the complaint page , this relationship is utilized so that only the admin can view the complaints.   |
| College management and clothes   | Many to many      | On both admin pages, this relationship is used for allowing admins to edit and add clothes. Multiple staff members from the college management can edit entries in the clothes, and several clothes entries may have been edited by various college management personnel.|
| LSP and Clothes| Many to many | In the context of the fourth relationship, on both admin pages, this association is utilized to grant administrators the ability to edit and add clothes. Several LSP members can edit entries in the clothes, and multiple clothes entries might have been edited by various personnel from the LSP.   |

### Schema : User
| Attribute    | Constraint| Why it is needed    |
| :---:        |    :----:   |     :---: |
| Email_id   | PRIMARY KEY    | To uniquely identify users. |
| Mobile_no , Password , Roll_no/Emp_id  |UNIQUE, NOT NULL| This attributes cannot contain null values and must be unique. |
| Hostel_no/Flat_no   |NOT NULL| This attribute cannot remain null.|
| Mobile_no | CHECK(Numeric, Length=10)| Mobile number must be of 10 digit numeric|

### Schema : College Management
| Attribute   | Constraint  | Why it is needed|
| :---:       |    :----:   |          :---: |
| Email_id   | PRIMARY KEY  | To uniquely identify College Management.|
| Mobile_no , Password   |UNIQUE, NOT NULL| This attributes cannot contain null values and must be unique |
|Mobile_no |CHECK(Numeric, Length=10)   | Mobile number must be of 10 digit numeric|
   
### Schema : Clothes
| Attribute   | Constraint  | Why it is needed|
| :---:       |    :----:   |          :---: |
| Roll_no/Emp_id & Room_no| PRIMARY KEY |To uniquely identify which record of Clothes Relation belongs to which user. |
| No_of_clothes , Date  |NOT NULL| These attributes cannot contain null values, there must be value in this attribute.|

### Schema : Complaint
| Attribute   | Constraint  | Why it is needed|
| :---:       |    :----:   |          :---: |
| Complain_id| PRIMARY KEY| To uniquely identify each complaint that user had raised and it will be auto generated. |
| Roll_no/Emp_id | FOREIGN KEY| This attribute is the Primary key of Clothes Relation. |

### Schema : Hostel
| Attribute   | Constraint  | Why it is needed|
| :---:        |    :----:   |          :---: |
| Hostel_name| PRIMARY KEY | To uniquely identify each hostel. |
| Schedule_1 , Schedule_2 | NOT NULL      |Schedule cannot be null; it must contain week days.|

### Schema : Laundry_service_provider
| Attribute   | Constraint  | Why it is needed|
| :---:        |    :----:   |          :---: |
| Email_id| PRIMARY KEY| To uniquely identify members of Laundry service provider.|
| Mobile_no , Password  | UNIQUE, NOT NULL | This attributes cannot contain null values and must be unique |
| Mobile_no    | CHECK(Numeric, Length=10)  | Mobile number must be of 10 digit numeric|

**Feedback 1:** Not all admins should be able to see information of students and thus delete the details of a student. For example, Laundry staff can not have this much of privilege of viewing and changing the student data but College Management should have.

**Implementation:** We had to create a new relationship between college_management and user, where college_management can edit user details. And also to ensure only selected admin/collage_management has access to doing so we used attribute p_level which shows permission level to which of the admin can and can not access user/student details.
#### Effect on relation and their constraint: (as per the ER diagram from assignment 1)
- Since above feedback only affects user and collage_management entities, So other entities, their relation and constraint do not get affected. 
- Since we have added the p_level attribute from the beginning (present in ER diagram), constraints do not change.
- We have to add a new relation between user and collage_management with partial participation from collage_management with many to many relationship.

### Additional Relationship to be Included in the ER Diagram:
| Relation      | Mapping cardinality | Where relationships are utilized    |
| :-----:        |    :----:   |          :---: |
| College management and User  | Partial participation with many to many relationship |On the admin page (admin page with p_level = 1) this relationship is utilized to allow admin to edit details of users. Only admins with high permission level can edit multiple student records and several records from user may have been edited by several high p_level admin. |

**Feedback 2:** While adding the clothes of a user, there is no need to add Room Number as it can be retrieved from the user information from users' roll-number.

**Implementation:** We removed the need of providing room no. of the student to add clothes of students instead now we are using user table to get details about students room no. 
#### Effect on relation and their constraint: (as per the ER diagram from assignment 1)
- Since we are getting a student's room_no. information from the user table and then adding that entry to the clothes entity/table, So constraints remain the same and also doing above does not affect any relations from ER diagram. So the relations remain the same after the above operation.

**Feedback 3:** Add an extra page at the student side (View) that covers other Laundry facilities provided in hostels. (eg. Smart laundry system at E Common room etc.)

**Implementation:** We have developed a webpage named "Other Facilities" that displays information about the laundry facilities available on the campus, including details on the locations of washing machines and dryers.
#### Effect on relation and their constraint: (as per the ER diagram from assignment 1)
- Since the above operation can be done without creating a different entity in the database called ‘other_facilities’, we have just made the webpage without using anything from our database. So none of the relation or their constraint gets affected by the above operation and remains unchanged.

**Final feedback:** While adding a student's clothes, a field should correspond to checking whether the provided piece of clothing is already torn. Sometimes, when students give their clothes for laundry, they include torn clothes. This can result in complaints from the student when the clothes are returned, stating that their clothes have been damaged. Therefore, it is necessary to address this issue.

**Implementation:** We have added a new attribute called ‘torned_cloth’ in clothes entity and added an option to provide information about torn clothes with the help of radio buttons for response ‘yes’ and ‘no’ in ‘add clothes’ webpage.
#### Effect on relation and their constraint: (as per the ER diagram from assignment 1)
- We had to add a new attribute ‘torned_clothes’ in the clothes entity with NOT NULL constraint.
- Apart from that no other relation or the constraints get affected by the above operation.

### Updated constraints for clothes schema:
| Attribute   | Constraint  | Why it is needed|
| :---:       |    :----:   |          :---: |
| Roll_no/Emp_id & Room_no| PRIMARY KEY |To uniquely identify which record of Clothes Relation belongs to which user. |
| No_of_clothes , Date  |NOT NULL| These attributes cannot contain null values, there must be value in this attribute.|
| Torned_clothes | NOT NULL| This attribute must have a value and can only be either "yes" or "no".|
