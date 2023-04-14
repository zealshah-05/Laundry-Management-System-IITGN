# Laundry-Management-System-IITGN
This Laundry Management System is specifically designed for IIT Gandhinagar Campus.

## Tasks
## 3.1 Responsibility of G1:
## 1. The G1 takes two feedbacks from the stakeholders, one initial feedback (on or before 30th March 11:59 PM), and then makes relevant changes as suggested per the first feedback, then final feedback (on or before 10th April 11:59 PM) post changes. The write-up/documentation should have screenshots before the first feedback, after the first feedback, and after the second feedback.
#### We have taken feedbacks from stakeholders to improve this system. All relevant changes recommended by the stakeholders are implemented in **G2: 2.** 

### First Feedback
**1.** Not all admins should be able to see information of students and thus delete the details of a student. For example, Laundry staff can not have this much of privilege of viewing and changing the student data but College Management should have.

**2.** While adding the clothes of a user, there is no need to add **Room Number** as it can be retrieved from the user information from users' roll-number.

**3.** Add an extra page at the student side (View) that covers other Laundry facilities provided in hostels. (eg. Smart laundry system at E Common room etc.)

### Final Feedback:
**1.** While adding a student's clothes, a field should correspond to checking whether the provided piece of clothing is already torn.
Sometimes, when students give their clothes for laundry, they include torn clothes. This can result in complaints from the student when the clothes are returned, stating that their clothes have been damaged. Therefore, it is necessary to address this issue.

#### Feedbacks are given by Dhirajbhai (dhirajku8298@gmail.com) from Laundry Service Provider.
## 2. Attach screenshots of different views [along with a write-up on their privileges] of the database as seen by different classes of users.
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

## 3.2 Responsibility of G2:
## 1. Concurrent multi-user access: Multiple users with different roles can access and update the database concurrently. In such a scenario, the same item can not be updated by two different users. For example, locks can be applied to tables in MySQL.

To acquire a lock in Flask in MySQL, we have two locks :

**A.**	Share lock for reading :
 ![image](https://user-images.githubusercontent.com/84655836/232013633-1a922f06-a763-477b-ae9c-c525a4f6c07b.png)

By adding “LOCK IN SHARE MODE” in select query we can acquire a shared lock.

**B.**	Exclusive lock for reading and writing:
 ![image](https://user-images.githubusercontent.com/84655836/232014225-590880f2-dd58-4398-a438-c34904ab7d70.png)

By using “FOR UPDATE” in select query we can acquire the Exclusive lock and can read and write to that table.

In this way we have added this to all our queries.
## 2. Implement the changes in the database as per the feedback received from stakeholders.
### Initial feedback: Recommendation 1 👇
When a junior member of Laundry staff (not Management) used to log in:
![image](https://user-images.githubusercontent.com/84655836/232070991-3ca8ae06-9ce4-4b2e-b93a-482e743966ca.png)

They could see the info of students and can also delete their info.
![image](https://user-images.githubusercontent.com/84655836/232071455-09290af8-c8de-4338-b99d-cdd70c73adee.png)




![image](https://user-images.githubusercontent.com/84655836/232071744-0b1c6a52-cd33-44ea-ba66-c27c5556c1ce.png)

We added a permission level where 1 means all permissions and 2 means minimum permissions , All permissions (p_level=1) is given to Management and Minimum permissions (p_level=2) are given to laundry staff.

![image](https://user-images.githubusercontent.com/84655836/232071980-8c0e8752-6856-4f12-8b0c-e0373493535b.png)

At the time of login we store the p_level to the session to use it later for different purpose(s).

![image](https://user-images.githubusercontent.com/84655836/232072096-376d734e-aee5-442f-bc9a-18ce8483e9aa.png)

Above, I added a condition statement that if p_level is equal to '1' then and only then 'Student' page is implemented or not.

![image](https://user-images.githubusercontent.com/84655836/232072357-b37d06ec-573e-4758-b92a-3d396ab46e86.png)

We added same conditional statement in app.py file too so that it can not be accessible by typing in URL.

![image](https://user-images.githubusercontent.com/84655836/232072855-c859dd61-8367-496b-a633-1fa32d085a94.png)

Now 'Student page' in Navigation bar is not displayed because I was logged in as a laundry staff member.


Now as I did log in with the Management ID, the 'Student' page is visible.
![image](https://user-images.githubusercontent.com/84655836/232074039-9cf99b8b-e0f0-4dfc-b81f-3771434e4564.png)

### Feedback 1 : Recommendation 1 is fulfilled !!
### Feedback 1 : Recommendation 2 👇
Before : It is required to add the Room number by student, which already corresponds to student's id number.
![image](https://user-images.githubusercontent.com/84655836/232078038-128c53e9-7234-490a-8bce-3e0234c6adae.png)

So, I am removing the room_no input field.
![image](https://user-images.githubusercontent.com/84655836/232078221-a69c9ec6-dbf9-4c4b-9b68-952a7fa5dadb.png)

Below, I included extra query to get the hostel number from id number and using that result's hostel number and then adding the clothes record.

![image](https://user-images.githubusercontent.com/84655836/232078489-a1e80d16-1010-4781-8ad9-61bbe9bb099a.png)

It works as expected; the room_no field is not there anymore.
![image](https://user-images.githubusercontent.com/84655836/232078923-40bdfac1-3585-413f-8513-d75a37816b98.png)


Still, the room number in the clothes status is visible by the user.
![image](https://user-images.githubusercontent.com/84655836/232079373-534f8bc1-9352-42f7-a66d-4cda26c5cf7f.png)
### Feedback 1: Recommendation 2 is fulfilled!!
### Feedback 1: Recommendation 3 👇
Before : No page informing about in-hostel laundry facility.
![image](https://user-images.githubusercontent.com/84655836/232082400-ca90ef16-926a-4f05-835a-bd0a136b9d61.png)

We made "Other-Facility" page.
![image](https://user-images.githubusercontent.com/84655836/232082686-e9d9319c-f29d-43ee-b633-cc89cd64cd82.png)

Now, one can see other laundry options.
![image](https://user-images.githubusercontent.com/84655836/232082929-c4be6421-136f-43ff-a530-efe465ddfd93.png)
### Feedback 1: Recommendation 3 is fulfilled !!

### Final Feedback 👇
![image](https://user-images.githubusercontent.com/84655836/232084798-03c4b0b8-d1df-4068-9016-6e43ca7658fe.png)

Before: Below is the Table structure

![image](https://user-images.githubusercontent.com/84655836/232084930-cb386b34-a8a5-4ac5-a6dc-68c42d830308.png)

Flask code for adding clothes (Before):
![image](https://user-images.githubusercontent.com/84655836/232085242-c9b448f5-7b7d-4a37-9d4c-4ff7a83a8b06.png)

After adding an extra field in the table structure as torned_cloth.

![image](https://user-images.githubusercontent.com/84655836/232085456-ebfb5236-4419-43cd-903e-c68a150fba64.png)

![image](https://user-images.githubusercontent.com/84655836/232085796-5b26fcda-a498-41bd-9c2e-24b37553fe08.png)
I also added a radio-button for torn clothes in add clothes page.

![image](https://user-images.githubusercontent.com/84655836/232086177-2b501f39-4148-4df1-8b42-2285ba9b752f.png)

Flask code for adding an extra field.
### Final recommendation is fulfilled !!

## 3.3 Responsibility of G1 & G2:    
## Documentation and screenshots of a total of 2 attacks [SQL Injection and XSS] performed and the defenses against those attacks    
## I. SQL Injection Attacks:

A.	In login page if we insert “' or 1=1 –“ in both email and password then we directly get access to system. Because of “or” statement other conditions does not consider.

![image](https://user-images.githubusercontent.com/84655836/232014904-71a96948-6669-4fb2-b4f7-254831eb7227.png)

After Hitting login button , here we can get access to system.
![image](https://user-images.githubusercontent.com/84655836/232015572-e9269f7f-8312-4732-86c1-227d20b82b8d.png)

( giving the value of first user as email)
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

## XSS Attacks:
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

The **pattern** attribute is used to specify a regular expression that the input value must match. In this case, the regular expression ```[^&lt;&gt;]*``` means that any character is allowed except for < and >.


## Contributions : 

- [ ] G1 :
-  Q 1:   `Zeal, Argha, Denish` 
-  Q 2:      `Zeal, Simran` 


- [ ] **G2** : 
- Q 1: `Zeal, Dishant`
- Q 2: `Zeal`


- [ ] **G1 and  G2** : 
- Q 1: `Zeal`
- Q 2: `       `
- Readme.md: `Simran`












