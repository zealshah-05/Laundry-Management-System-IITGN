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
To acquire a lock in flask in MySQL we have two locks :

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
