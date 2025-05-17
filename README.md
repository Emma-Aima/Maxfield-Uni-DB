# Maxfield-Uni-DB
**A Database Project of University Students Records from Social Sciences, Managerial Sciences and Natural Sciences Faculties**

The Project Question Instructions 
* **Question 1: Build a Complete Database Management System**
a. Objective:

- Design and implement a full-featured database using only MySQL.

b. What to do:

- Choose a real-world use case (e.g., Library Management, Student Records, Clinic Booking System, Inventory Tracking, etc.)
- Create a well-structured relational database using SQL.

c. Use SQL to create:

- Tables with proper constraints (PK, FK, NOT NULL, UNIQUE)
- Relationships (1-1, 1-M, M-M where needed)

d. Deliverables:

- A single .sql file containing your:
CREATE TABLE statements

* **Submission Instructions**
- Push your complete project to a GitHub repository

📌 README file with:
- Project Title
- Description of what your project does
- How to run/setup the project (or import SQL)
- Screenshot or link to your ERD

The repo must include:
🧠 For Question 1:
- Only one .sql file (well-commented)

Project Title: **Maxfield University Students Database Management System**


* **THE PROJECT LAYOUT AND DESCRIPTION**
- Name of Institution: Maxfield University, Nigeria

The database contains comprehensive information about:

- 45 students with complete personal and contact information

- 3 faculties with their respective deans

- 15 courses across different disciplines

- Course enrollment records for all 45 students

- 8 lecturers and their course assignments

- Hostel accommodation options

- Meal plan options and pricing

- School fee payment records

- Departmental structure

- Academic programs offered

- Student-program associations

* **PROJECT OVERVIEW:**
This project is a comprehensive University Database Management System designed to track and manage student records, academic programs, 
faculty information, course enrollments, and financial transactions within a university setting. The system is built using MySQL and provides 
a structured way to store and retrieve university-related data.


- Project Description:
This project collected a few of the students database who enrolled academic session between 2016-2020, the students are divided into
three different faculties, namely -
a. Natural Sciences
b. Managerial Sciences
c. Social Sciences

The students who were categorized in these three faculties, also registered in the following departments;
a. Natural Sciences - Computer Science, Mathematics, and Medical Sciences
b. Managerial Sciences - Business Administration, Economics, and Accounting
c. Social Sciences - Sociology, Psychology, and Public Administration

The project also collected data for the faculty deans and some lecturers currently working in those faculties. 
The deans are as follows: 
a.  Natural Sciences - Prof. Nkechi Okili
b. Managerial Sciences - Dr. Caleb Johnson
c. Social Sciences - Prof. Ndidi, Lawanson

Some of the lecturers who lectures the students are as follows:
1. Dr. John Dosumu
2. Dr. Jane Samuel
3. Dr. Emeliana Johnson
4. Prof. Chika Mellanie
5. Prof. Damilola Oluwaseye
6. Dr. Mike Olugbenga
7. Dr. Ifeoma Benson
8. Prof. Raymond Badmus

Some of the courses and their course codes the data derived were as follows:
1. Introduction to Computer Science, CS101
2. Calculus I, MATH101
3. Principles of Management, MGT101
4. Microeconomics, ECO101
5. Sociology 101, SOC101
6. Psychology 101, PSY101
7. Data Structures and Algorithms, CS102
8. Calculus II, MATH102
9. Financial Accounting, ACC101
10. Macroeconomics, ECO102
11. Business Law, BUS302
12. Corporate Finance, FIN314
13. Web Development, CS201
14. Research Methods, SOC204
15. Social Psychology, PSY202

* **Database Schema**
Tables Created
1. student
- Stores student personal information including name, contact details, date of birth, and enrollment year
- Links to faculty, hostel, and meal plan information

2. faculty
- Contains faculty names and dean information
- Three faculties: Natural Sciences, Managerial Sciences, and Social Sciences

3. course
- Stores course information including name, code, credit hours, and faculty association
- 15 courses across various disciplines

4. course_enrollment
- Tracks which students are enrolled in which courses
- Includes grade information, semester, and year

5. lecturer
- Stores lecturer information including name, contact details, and faculty association
- 8 lecturers in the system

6. lecturer_course
- Junction table linking lecturers to the courses they teach

7. hostel
- Stores hostel information including name, capacity, and location
- 5 hostels with varying capacities

8. meal_plan
- Contains meal plan options with descriptions and costs
- 4 different meal plans available

9. school_fees_payment
- Tracks student fee payments including amount, date, and academic period

10. department
- Contains department information linked to faculties
- 9 departments across 3 faculties

11. program
- Stores academic program information linked to departments
- 9 programs with different degree types

12. student_program
- Links students to their academic programs
- Includes enrollment dates, expected graduation, and current level

* **Project Functionality**
This database system allows the university to:

- Track all student personal and academic information

- Manage course offerings and enrollments

- Record and track student grades

- Manage faculty and lecturer assignments

- Handle student accommodation in hostels

- Manage meal plan subscriptions

- Track fee payments

- Organize academic programs and departments

- Monitor student progress through their programs

* **Setup and Execution**
Prerequisites
MySQL Server installed

MySQL client or interface (like MySQL Workbench)
1. Create the database:

sql
CREATE DATABASE IF NOT EXISTS records;
USE records;

2. Execute the provided SQL script to:
- Create all tables
- Establish relationships between tables
- Populate all tables with sample data

3. The database is now ready for queries and operations.

* **Running Queries**
You can now run SQL queries against this database to:

1. Retrieve student information
2. Generate academic reports
3. Track payments
4. Manage course enrollments
5. And perform all other university record-keeping functions

* **Sample Queries**
Here are some example queries you might run:

1. Get all students in a particular program:

sql
SELECT s.first_name, s.last_name, p.program_name 
FROM student s
JOIN student_program sp ON s.student_id = sp.student_id
JOIN program p ON sp.program_id = p.program_id
WHERE p.program_name = 'Computer Science';

2. Find students with outstanding payments:

sql
SELECT s.first_name, s.last_name, SUM(sf.amount_paid) as total_paid
FROM student s
LEFT JOIN school_fees_payment sf ON s.student_id = sf.student_id
GROUP BY s.student_id
HAVING total_paid < 800000; -- Assuming 800,000 is the full fee

3. List courses and their lecturers:

sql
SELECT c.course_name, l.first_name, l.last_name
FROM course c
JOIN lecturer_course lc ON c.course_id = lc.course_id
JOIN lecturer l ON lc.lecturer_id = l.lecturer_id;

* **Key Elements:**
Conceptual Design for Entity Relationship Diagram:

Main Entities:
1. Student
2. Faculty
3. Course
4. Lecturer
5. Hostel
6. MealPlan
7. Department
8. Program
9. SchoolFeesPayment

Junction Tables:
1. CourseEnrollment (Student-Course)

2. LecturerCourseAssignment (Lecturer-Course)

3. StudentProgram (Student-Program)

Relationships (Lines connecting entities):

One-to-many (1:N):
- Faculty → Student
- Faculty → Department
- Department → Program
- Program → StudentProgram
- Faculty → Lecturer
- Faculty → Course
- Hostel → Student
- MealPlan → Student
- Student → SchoolFeesPayment
- Student → CourseEnrollment
- Course → CourseEnrollment
- Lecturer → LecturerCourseAssignment
- Course → LecturerCourseAssignment
