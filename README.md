# Laundry-Management-System-IITGN
This Laundry Management System is specifically designed for IIT Gandhinagar Campus.

## 3. Tasks
### 3.1 Responsibility of G1:
**For G1: 1,** We have taken feedbacks from stakeholders to improve this system. All relevant changes recommended by the stakeholders are implemented in **G2: 2** 

### First Feedback
**1.** Not all admin can see information of students and They can not delete the details of a student. For example, Laundry staff can not have this much of privilege of viewing and changing the student information but management can have.

**2.** While adding the clothes of user there is no need to add **Room Number** as can be retrieved from the user information from users' roll-number.

**3.** Add an extra page at the student side that covers other Laundry facilities provided in hostel (eg. Smart laundry system at E Common room etc.)

### Final Feedback:
**1.** While adding a student's clothes, a field should correspond to checking whether the provided piece of clothing is already torn.
Sometimes, when students give their clothes for laundry, they include torn clothes. This can result in complaints from the student when the clothes are returned, stating that their clothes have been damaged. Therefore, it is necessary to address this issue.

### G1: 2.
#### A.	Students' View:
a.	Students can see cloth-status and also add a complaint for laundry.

b.	Students can see the Hostel schedule for picking-up clothes.

c.	Students can see their complaint's status.
![image](https://user-images.githubusercontent.com/84655836/232011622-032c1e79-8aa3-4f67-b702-e3c28cfd9bfd.png)

#### B.	Admin View: Low Permission level workers 
a.	Can see clothes and can also delete entry for clothes.

b.	Can insert the detail of student clothes.

c.	Can see the complaints.
![image](https://user-images.githubusercontent.com/84655836/232012151-cc707b5f-2c38-449e-881c-4d2ecd95fb89.png)
#### C.	Admin View: High Permission level workers 
a.	Can see clothes and can also delete entry for clothes.

b.	Can insert the detail of student clothes.

c.	Can see the complaints.

d.	Can see the details of student and also admin (with High permission level) can delete the record of student.
![image](https://user-images.githubusercontent.com/84655836/232012596-156bdeaa-41a1-4a14-9f72-19f0dac85381.png)
### G2: 
### 1.
To acquire a lock in Flask in MySQL we have two locks :

**A.**	Share lock for reading :
 ![image](https://user-images.githubusercontent.com/84655836/232013633-1a922f06-a763-477b-ae9c-c525a4f6c07b.png)

By adding “LOCK IN SHARE MODE” in select query we can acquire a shared lock.

**B.**	Exclusive lock for reading and writing:
 ![image](https://user-images.githubusercontent.com/84655836/232014225-590880f2-dd58-4398-a438-c34904ab7d70.png)

By using “FOR UPDATE” in select query we can acquire the Exclusive lock and can read and write to that table.

In this way we have added this to all our queries.

### 2. SQL Injection Attacks:

A.	In login page if we insert “' or 1=1 –“ in both email and password then we directly get access to system. Because of “or” statement other conditions does not consider.

![image](https://user-images.githubusercontent.com/84655836/232014904-71a96948-6669-4fb2-b4f7-254831eb7227.png)

After Hitting login button , here we can get access to system.
![image](https://user-images.githubusercontent.com/84655836/232015572-e9269f7f-8312-4732-86c1-227d20b82b8d.png)

(giving the value of first user as email)
#### Solution to this threat is:
Use parameterized query of Flask to solve this problem.

Before:

![image](https://user-images.githubusercontent.com/84655836/232015834-8b8a41ce-0d7f-4563-aab5-8918ac84ae58.png)

After adding parameterized query:
![image](https://user-images.githubusercontent.com/84655836/232016030-fadcf0d1-a376-43ef-936a-9c01e7446679.png)

Now the attack is not possible.


**B.**	In register page, if we insert ```“ '; DROP TABLE temp; -- ”``` in any of field then it will delete the table temp from the database.
![image](https://user-images.githubusercontent.com/84655836/232016398-6920123d-5a1f-4869-88db-969ce01ed273.png)

It will give error if you click on register, but on Database, this click has deleted table “temp”.

#### Solution to this threat:
Use parameterize query of flask to solve this problem
Before:
![image](https://user-images.githubusercontent.com/84655836/232016935-858ceb8c-2dd6-4f09-aa31-49c20ad05867.png)

After adding parameterized query:
![image](https://user-images.githubusercontent.com/84655836/232017031-453999c7-edcf-4697-9092-4e2b04dfc19a.png)

Now the attack is not possible.

### XSS Attack:
**A.**	If we register using the Gmail id as ```“<script>alert('XSS attack');</script>”``` and by adding other fields as random then at the time we logged in to the system , we get the alert message as we have displayed user’s email id on homepage so at that time the script will run.
![image](https://user-images.githubusercontent.com/84655836/232020988-a125aa22-f93a-40ff-824e-9b6ed5116d1f.png)
![image](https://user-images.githubusercontent.com/84655836/232021031-39051ef0-b2d7-4201-9493-26491cfa63d4.png)

#### Solution to this issue is:
Sanitise the input properly that can only accept valid email ids only using the input field as **type=”email”**  will ensure this.
![image](https://user-images.githubusercontent.com/84655836/232021251-0489e121-a48a-4f49-83fc-77ba7bcac23d.png)

You can also use triggers to validate a perfect email address.
![image](https://user-images.githubusercontent.com/84655836/232021618-35e17dce-24e4-492a-976b-5aee058a22fa.png)

**B.**	At the time of registering the complaint the user can input ```“<script>alert('You are Hacked);</script>”``` this tag in describe field.
And due to this the admin when opens the complaint page get a popup of alert saying “You are Hacked”.
![image](https://user-images.githubusercontent.com/84655836/232021945-38352ec4-dbef-4389-9270-f58f32d314e5.png)
![image](https://user-images.githubusercontent.com/84655836/232021986-abb6b18a-3eb0-41b5-ac7e-47bd11074378.png)
#### Solution to this issue is:
Sanitise the inputs , here we can use pattern attribute of input field to not accept the “< >” brackets as:
![image](https://user-images.githubusercontent.com/84655836/232022150-fbf3201a-d6cd-4a19-800c-42db73e180cc.png)
















