-- Create database records
CREATE DATABASE IF NOT EXISTS records;
USE records;

-- Students Table
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    year_of_enrollment YEAR NOT NULL,
    phone_number VARCHAR(15)
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
    FOREIGN KEY (hostel_id) REFERENCES hostel(hostel_id) Nullable
    FOREIGN KEY (meal_plan_id) REFERENCES meal_plan(meal_plan_id) Nullable
);

/* Insert Students Table */
INSERT INTO student (student_id, first_name, middle_name, last_name, date_of_birth, gender, email, address, year_of_enrollment, phone_number) VALUES
(1, 'Aisha', 'Marie', 'Abubakar', '1998-05-12', 'Female', 'aisha.abubakar@example.com', '123 Main Street, Lagos', 2016, '08019305678');
(2, 'Chinedu', 'Obioma', 'Okeke', '1999-02-23', 'Male', 'chineduokoro2@example.com', '22, Ikot Ekpene Rd, Uyo', 2017, '07090343678');
(3, 'Fatima', 'Zahra', 'Aliyu', '2000-08-15', 'Female', 'fatimazaliyu@example.com', '45, Sule Street, Kano', 2020, '09023145678');
(4, 'Adebayo', 'Oluwaseun', 'Afolabi', '2001-11-30', 'Male', 'adebayoafolabi@example.com', '78, Oyo Rd, Ibadan', 2019, '08087265432');
(5, 'Chinonso', 'Chukwuemeka', 'Nwankwo', '1998-03-14', 'Male', 'chinonsonwankwo@example.com', '12, Okigwe Rd, Owerri', 2018, '07098765402');
(6, 'Ngozi', 'Chinwe', 'Eze', '1999-12-01', 'Female', 'ngozi.eze@example.com', '34, Okita Way, Enugu', 2017, '09098765392');
(7, 'Samuel', 'Ifeanyi', 'Okafor', '2000-01-10', 'Male', 'samuelifyokafor@example.com', '136, Chief Azombe Rd, Ebonyi', 2019, '08012309679');
(8, 'Zainab', 'Fatou', 'Jibril', '1999-10-02', 'Female', 'zainabjibril34@example.com', '78, Maiduguri Rd, Borno', 2019, '09011045680');
(9, 'Emeka', 'Chijioke', 'Ibe', '1999-04-25', 'Male', 'emeka.ibe@example.com', '90, Port Street, Rivers', 2018, '08072145681');
(10, 'Amina', 'Hauwa', 'Bello', '2000-03-21', 'Female', 'aminahbello19@example.com', '12, Sokoto Rd, Katsina', 2020, '09089345682');
(11, 'Anita', 'Divine', 'Ekeze', '2000-04-17', 'Female', 'anitadivineekeze@example.com', '34, Enugu Rd, Enugu', 2020, '09013345683');
(12, 'Michelle', 'Susan', 'Ogunkoya', '2001-02-02', 'Female', 'michelleogunkoya@example.com', '56, Abakaliki Crescent, Ebonyi', 2020, '08017745684');
(13, 'Emmanuel', 'Isikpoje', 'Aidelokhai', '2000-09-21', 'Male', 'emmanuelisikpoje11@example.com', '78, Surulere Rd, Ibadan', 2020, '07012369685');
(14, 'Raphael', 'Somtochukwu', 'Nwafor', '1998-07-14', 'Male', 'raphaelsomtochukwu@example.com', '90, Port Harcourt Rd, Rivers', 2018, '08012345686');
(15, 'Obinna', 'Paul', 'Ihekaire', '1999-11-11', 'Male', 'obinnaihekaire@example.com', '12, Owerri Rd, Imo', 2018, '07033345687');
(16, 'Wendy', 'Liah', 'Okwor', '2001-05-16', 'Female', 'wendyliahokwore@example.com', '34, Enugu Rd, Enugu', 2020, '09022345688');
(17, 'Chinwe', 'Chinonso', 'Nwosu', '2000-06-15', 'Female', 'chinwe.nwosu@example.com', '56, Abakaliki Crescent, Ebonyi', 2020, '09012345689');
(18, 'Tosin', 'Oluwatobi', 'Adebayo', '2000-07-20', 'Male', 'tosinadebayo@example.com', '78, Surulere Rd, Lagos', 2020, '08012345690');
(19, 'Chiamaka', 'Ezinne', 'Michael', '1999-11-11', 'Female', 'chiamakamichael@example.com', '12, Owerri Rd, Imo', 2018, '07012341291');
(20, 'Esther', 'Ehinosen', 'Egbesun', '2000-08-01', 'Female', 'esther.egbesun20@example.com', '34, Enugu Rd, Enugu', 2020, '09012345001');
(21, 'Bosede', 'Halima', 'Umoru', '2002-12-03', 'Female', 'bosedeumoru100@example.com', '22, Onitsha Rd, Ebonyi', 2020, '09012345002');
(22, 'Tyler', 'James', 'Smith', '2001-01-01', 'Male', 'tylerjamessmith@example.com', '123, Ikotun St, Lagos', 2020, '08012345003');
(23, 'Olivia', 'Grace', 'Johnson', '2000-05-15', 'Female', 'oliviagjohnson@example.com', '45, Victoria Island, Lagos', 2020, '09012398004');
(24, 'Noah', 'Frances', 'Williams', '2000-09-30', 'Male', 'noahfranceswilliams@example.com', '78, Surulere Rd, Lagos', 2019, '08010315005');
(25, 'Sophia', 'Adeleke', 'Ogunleye', '2002-03-28', 'Female', 'sophiaadeleke@example.com', '12, Lekki Rd, Lagos', 2020, '09133345006');
(26, 'Uchechi', 'Jonathan', 'Okwudili', '2001-11-11', 'Female', 'uchechijonathan@example.com', '34, Enugu Rd, Enugu', 2020, '09012025002');
(27, 'Chidera', 'Chibueze', 'Okoli', '2000-01-21', 'Male', 'chiderachibueze@example.com', '98, Abah Crescent, Ebonyi', 2019, '08032450998');
(28, 'Elizabeth', 'Christine', 'Adeojo', '2001-11-12', 'Female', 'elizabethadeojo@example.com', '18, Surulere Rd, Lagos', 2020, '09014425008');
(29, 'Happiness', 'Adanna', 'Ifechukwu', '2001-06-25', 'Female', 'happinessifechukwu25@example.com', '30, Port Harcourt Rd, Delta', 2020, '07089945009');
(30, 'Ajoke', 'Oluwatoyin', 'Adeyinka', '2000-03-25', 'Female', 'ajokeadeyinka@example.com', '33, Lekki Rd, Lagos', 2019, '09132300010');
(31, 'Kevin', 'Jonas', 'Parker', '2000-10-10', 'Male', 'kevinparker@example.com', '45, Alimosho Street, Lagos', 2020, '08012215311');
(32, 'Ayo', 'Oluwatobi', 'Adesanya', '2001-04-20', 'Male', 'ayooluwatobiadesanya@example.com', '34, Enugu Rd, Anambra', 2020, '09020045012');
(33, 'Matilda', 'Emily', 'George', '1999-04-15', 'Female', 'matildaemilygeorge@example.com', '56, Good Roddy Crescent, Ebonyi', 2018, '08012345678');
(34, 'Ebuka', 'Logan', 'Obi', '2001-04-06', 'Male', 'ebukaloganobi@example.com', '78, Surulere Rd, Lagos', 2020, '09032445679');
(35, 'Musa', 'Abdul', 'Suleiman', '2000-02-28', 'Male', 'musaabdulsuleiman@example.com', '90, Marshall Rd, Ogun', 2020, '07012345680');
(36, 'Priscilia', 'Chinwe', 'Nwokoye', '2000-05-20', 'Female', 'priscilianwankwo@example.com', '120, Adeniran Rd, Lagos', 2020, '09132301111');
(37, 'Victor', 'Kamsi', 'Okonkwo', '1999-12-10', 'Female', 'okonkwokamsi21@example.com', '15, SamDike Street, Abia', 2019, '08021199823');
(38, 'Clara', 'Sochi', 'Albert', '1999-10-02', 'Female', 'clarasoalbert@example.com', '69, Bucknor Estate, Lagos', 2020, '09012345004');
(39, 'Chukwudozie', 'Joseph', 'Samson', '2001-02-14', 'Male', 'chukwudoziessamson@example.com', '4, Kuye Island, Lagos', 2020, '08102345005');
(40, 'Tobenna', 'Jordan', 'Ezenwa', '2001-12-10', 'Male', 'tobennajordanezenwa@example.com', '12, Lekki Rd, Lagos', 2020, '09010945006');
(41, 'Frank', 'Peter', 'Moses', '2001-06-05', 'Male', 'frankpeter@example.com', '14, Dansa Rd, Delta', 2020, '08012345012');
(42, 'Blessing', 'Chinonso', 'Nwaeze', '2000-07-15', 'Female', 'blessingchinonso@example.com', '45, Okota Road, Lagos', 2020, '09011945004');
(43, 'Favour', 'Salmat', 'Ogunbayo', '2002-02-01', 'Female', 'favourogunbayo39@example.com', '34, Gwarimkpa Rd, Abuja', 2020, '09012995005');
(44, 'Chukwudi', 'Alvyn', 'Solomon', '1999-11-22', 'Male', 'chukwudialvyn@example.com', '5, Fayemi Road, Lagos', 2020, '08102345006');
(45, 'Olubunmi', 'Jake', 'Aimalohi', '2000-08-15', 'Male', 'olubunmijake@example.com', '53, Dodoma Rd, Abuja', 2020, '09012345007');

-- Faculty Table
CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    faculty_name VARCHAR(100) NOT NULL,
    faculty_dean VARCHAR(100) NOT NULL
);


INSERT INTO faculty(faculty_id, faculty_name, faculty_dean) VALUES
(1, 'Natural Sciences', 'Prof. Nkechi Okili'),
(2, 'Managerial Sciences', 'Dr. Caleb Johnson'),
(3, 'Social Sciences', 'Prof. Ndidi, Lawanson'),

-- Courses Table
CREATE TABLE course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) NOT NULL UNIQUE,
    credit_hours INT NOT NULL,
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

/* Insert Courses Table */
INSERT INTO course(course_id, course_name, course_code, credit_hours, faculty_id) VALUES
(1, 'Introduction to Computer Science', 'CS101', 3, 1),
(2, 'Calculus I', 'MATH101', 4, 1),
(3, 'Principles of Management', 'MGT101', 3, 2),
(4, 'Microeconomics', 'ECO101', 3, 2),
(5, 'Sociology 101', 'SOC101', 3, 3),
(6, 'Psychology 101', 'PSY101', 3, 3),
(7, 'Data Structures and Algorithms', 'CS102', 4, 1),
(8, 'Calculus II', 'MATH102', 4, 1),
(9, 'Financial Accounting', 'ACC101', 3, 2),
(10, 'Macroeconomics', 'ECO102', 3, 2),
(11, 'Business Law', 'BUS302', 3, 2),
(12, 'Corporate Finance', 'FIN314', 3, 2),
(13, 'Web Development', 'CS201', 3, 1), 
(14, 'Research Methods', 'SOC204', 3, 3),
(15, 'Social Psychology', 'PSY202', 3, 3);

-- Course Enrollment Table
CREATE TABLE course_enrollment (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade DECIMAL(3, 2),
    semester ENUM('Fall', 'Spring', 'Summer') NOT NULL,
    year YEAR NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

/* Insert Course Enrollment Table */
INSERT INTO course_enrollment(student_id, course_id, grade, semester, year) VALUES
(1, 1, 4.6, 'Fall', 2016),
(2, 2, 3.8, 'Spring', 2017),
(3, 3, 3.8, 'Fall', 2020),
(4, 4, 4.5, 'Spring', 2019),
(5, 5, 3.6, 'Fall', 2018),
(6, 6, 3.9, 'Spring', 2017),
(7, 7, 4.5, 'Fall', 2019),
(8, 8, 3.9, 'Spring', 2019),
(9, 9, 3.4, 'Fall', 2018),
(10, 10, 3.5, 'Spring', 2020),
(11, 11, 3.8, 'Fall', 2020),
(12, 12, 3.6, 'Spring', 2020),
(13, 13, 4.0, 'Fall', 2020),
(14, 14, 3.5, 'Spring', 2018),
(15, 15, 3.2, 'Fall', 2018),
(16, 16, 4.1, 'Spring', 2020),
(17, 17, 4.7, 'Fall', 2020),
(18, 18, 3.7, 'Spring', 2020),
(19, 19, 3.4, 'Fall', 2018),
(20, 20, 3.6, 'Spring', 2020),
(21, 21, 4.2, 'Fall', 2020),
(22, 22, 3.6, 'Spring', 2020),
(23, 23, 4.8, 'Fall', 2020),
(24, 24, 3.5, 'Spring', 2019),
(25, 25, 3.2, 'Fall', 2020),
(26, 26, 3.9, 'Spring', 2020),
(27, 27, 4.0, 'Fall', 2019),
(28, 28, 3.9, 'Spring', 2020),
(29, 29, 3.4, 'Fall', 2018),
(30, 30, 4.5, 'Spring', 2019),
(31, 31, 3.8, 'Fall', 2020),
(32, 32, 3.9, 'Spring', 2020),
(33, 33, 4.3, 'Fall', 2018),
(34, 34, 3.5, 'Spring', 2020),
(35, 35, 4.2, 'Fall', 2018),
(36, 36, 3.9, 'Spring', 2020),
(37, 37, 4.6, 'Fall', 2019),
(38, 38, 3.8, 'Spring', 2020),
(39, 39, 3.4, 'Fall', 2020),
(40, 40, 3.5, 'Spring', 2020),
(41, 41, 3.8, 'Fall', 2020),
(42, 42, 3.6, 'Spring', 2020),
(43, 43, 4.0, 'Fall', 2020),
(44, 44, 3.5, 'Spring', 2020),
(45, 45, 4.2, 'Fall', 2020);

-- Lecturer Table
CREATE TABLE lecturer (
    lecturer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15),
    faculty_id INT NOT NULL,
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);

/* Insert Lecturer Table */
INSERT INTO lecturer(lecturer_id, first_name, last_name, email, phone_number, faculty_id) VALUES
(1, 'Dr. John', 'Dosumu', 'johndosumu.maxfield@example.com', '09012339678', 1),
(2, 'Dr. Jane', 'Samuel', 'janesamuel.maxfield@example.com', '09023002789', 2),
(3, 'Dr. Emeliana', 'Johnson', 'emelianajohnson.maxfield@example.com', '09031127330', 3),
(4, 'Prof. Chika', 'Mellanie', 'profchika.maxfield@example.com', '09041127120', 1),
(5, 'Prof. Damilola', 'Oluwaseye', 'damilolaoluwaseye.maxfield@example.com', '09051773833', 2),
(6, 'Dr. Mike', 'Olugbenga', 'mikoolugbenga.maxfield@example.com', '09060207828', 3),
(7, 'Dr. Ifeoma', 'Benson', 'bensonifeoma.maxfield@example.com', '09031127890', 2),
(8, 'Prof. Raymond', 'Badmus', 'profraymondbadmus.maxfield@example.com', '09041123419', 1);


-- Lecturer Course Assignment Table
CREATE TABLE lecturer_course (
    lecturer_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (lecturer_id) REFERENCES lecturer(lecturer_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

/* Insert Lecturer Course Assignment Table */
INSERT INTO lecturer_course(lecturer_id, course_id) VALUES
(1, 1),
(1, 7),
(2, 2),
(2, 9),
(3, 3),
(3, 6),
(4, 4),
(4, 13),
(5, 10),
(5, 11),
(6, 5),
(6, 14),
(7, 8),
(7, 12),
(8, 15);


-- Hostel Table
CREATE TABLE hostel (
    hostel_id INT PRIMARY KEY AUTO_INCREMENT,
    hostel_name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL,
    location VARCHAR(100) NOT NULL
);

/* Insert Hostel Table */
INSERT INTO hostel(hostel_id, hostel_name, capacity, location) VALUES
(1, 'Aquila Hostel', 200, 'Main Campus'),
(2, 'Leo Hostel', 150, 'North Campus'),
(3, 'Diamond Hostel', 100, 'Main Campus'),
(4, 'Pearl Hostel', 120, 'South Campus'),
(5, 'Coral Hostel', 80, 'South Campus');

-- Meal Plan Table
CREATE TABLE meal_plan (
    meal_plan_id INT PRIMARY KEY AUTO_INCREMENT,
    meal_plan_name VARCHAR(100) NOT NULL,
    description TEXT,
    cost DECIMAL(10, 2) NOT NULL
);

/* Insert Meal Plan Table */
INSERT INTO meal_plan(meal_plan_id, meal_plan_name, description, cost) VALUES
(1, 'Basic Meal Plan', '3 meals a day', 150000.00),
(2, 'Standard Meal Plan', '3 meals a day', 250000.00),
(3, 'Premium Meal Plan', '4 meals a day', 400000.00),
(4, 'Vegetarian Meal Plan', '3 vegetarian meals a day', 270000.00);

-- School Fees Payment Table
CREATE TABLE school_fees_payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    amount_paid DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    academic_year YEAR NOT NULL,
    semester ENUM('Fall', 'Spring', 'Summer') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

/* Insert School Fees Payment Table */
INSERT INTO school_fees_payment(payment_id, student_id, amount_paid, payment_date, academic_year, semester) VALUES
(1, 1, 800000.00, '2016-08-24', 2016, 'Fall'),
(2, 2, 980000.00, '2017-01-28', 2017, 'Spring'),
(3, 3, 750000.00, '2020-08-31', 2020, 'Fall'),
(4, 4, 730000.00, '2019-02-01', 2019, 'Spring'),
(5, 5, 800000.00, '2018-09-01', 2018, 'Fall'),
(6, 6, 1020000.00, '2017-01-25', 2017, 'Spring'),
(7, 7, 880000.00, '2019-09-06', 2019, 'Fall'),
(8, 8, 900000.00, '2019-01-28', 2019, 'Spring'),
(9, 9, 750000.00, '2018-09-01', 2018, 'Fall'),
(10, 10, 920000.00, '2020-01-18', 2020, 'Spring'),
(11, 11, 1020000.00, '2020-08-31', 2020, 'Fall'),
(12, 12, 980000.00, '2020-01-28', 2020, 'Spring'),
(13, 13, 730000.00, '2020-09-01', 2020, 'Fall'),
(14, 14, 800000.00, '2018-01-31', 2018, 'Spring'),
(15, 15, 980000.00, '2018-09-01', 2018, 'Fall'),
(16, 16, 800000.00, '2020-01-28', 2020, 'Spring'),
(17, 17, 750000.00, '2020-08-31', 2020, 'Fall'),
(18, 18, 980000.00, '2020-01-28', 2020, 'Spring'),
(19, 19, 880000.00, '2018-09-01', 2018, 'Fall'),
(20, 20, 800000.00, '2020-01-31', 2020, 'Spring'),
(21, 21, 1020000.00, '2020-09-18', 2020, 'Fall'),
(22, 22, 1300000.00, '2020-01-31', 2020, 'Spring'),
(23, 23, 980000.00, '2020-08-31', 2020, 'Fall'),
(24, 24, 880000.00, '2019-01-30', 2019, 'Spring'),
(25, 25, 980000.00, '2020-09-01', 2020, 'Fall'),
(26, 26, 750000.00, '2020-01-28', 2020, 'Spring'),
(27, 27, 730000.00, '2019-09-01', 2019, 'Fall'),
(28, 28, 980000.00, '2020-01-28', 2020, 'Spring'),
(29, 29, 920000.00, '2020-09-01', 2020, 'Fall'),
(30, 30, 1020000.00, '2019-01-24', 2019, 'Spring'),
(31, 31, 750000.00, '2020-09-18', 2020, 'Fall'),
(32, 32, 800000.00, '2020-01-21', 2020, 'Spring'),
(33, 33, 800000.00, '2018-09-01', 2018, 'Fall'),
(34, 34, 880000.00, '2020-01-28', 2020, 'Spring'),
(35, 35, 980000.00, '2020-09-01', 2020, 'Fall'),
(36, 36, 730000.00, '2020-02-01', 2020, 'Spring'),
(37, 37, 920000.00, '2019-09-11', 2019, 'Fall'),
(38, 38, 1300000.00, '2020-01-19', 2020, 'Spring'),
(39, 39, 800000.00, '2020-09-08', 2020, 'Fall'),
(40, 40, 880000.00, '2020-01-30', 2020, 'Spring'),
(41, 41, 750000.00, '2020-08-28', 2020, 'Fall'),
(42, 42, 980000.00, '2020-01-29', 2020, 'Spring'),
(43, 43, 920000.00, '2020-09-21', 2020, 'Fall'),
(44, 44, 880000.00, '2020-01-22', 2020, 'Spring'),
(45, 45, 800000.00, '2020-09-01', 2020, 'Fall');

-- Department Table
CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR (100) NOT NULL,
    faculty_id INT NOT NULL,
    FOREIGN KEY (faculty_id) REFERENCES faculty_id(faculty_id)
);

/* Insert Department Table */
INSERT INTO department(department_id, department_name, faculty_id) VALUES
(1, 'Computer Science', 1),
(2, 'Mathematics', 1),
(3, 'Medical Sciences', 1),
(4, 'Business Administration', 2),
(5, 'Economics', 2),
(6, 'Accounting', 2),
(7, 'Sociology', 3),
(8, 'Psychology', 3),
(9, 'Public Administration', 3);

-- Program Table
CREATE TABLE program (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    program_name VARCHAR (100) NOT NULL,
    department_id INT NOT NULL,
    degree_type ENUM('BSc', 'BA', 'MSc') NOT NULL,
    FOREIGN KEY department_id REFERENCES department_id(department_id)
);

/* Insert Program Table */
INSERT INTO program(program_id, program_name, department_id, degree_type) VALUES
(1, 'Computer Science', 1, 'BSc'),
(2, 'Mathematics', 2, 'BSc'),
(3, 'Medical Sciences', 3, 'MBBS'),
(4, 'Business Administration', 4, 'BSc'),
(5, 'Economics', 5, 'BSc'),
(6, 'Accounting', 6, 'BSc'),
(7, 'Sociology', 7, 'BSc'),
(8, 'Psychology', 8, 'BSc'),
(9, 'Public Administration', 9, 'BSc');

-- Student Program Table
CREATE TABLE student_program (
    student_id INT NOT NULL,
    program_id INT NOT NULL,
    date_enrolled DATE NOT NULL,
    expected_graduation_date DATE NOT NULL,
    current_level ENUM('100', '200', '300', '400'),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id)
);

/* Insert Student Program Table */
INSERT INTO student_program(student_id, program_id, date_enrolled, expected_graduation_date, current_level) VALUES
(1, 1, '2016-08-24', '2020-06-25', '400'),
(2, 2, '2017-01-28', '2021-06-25', '300'),
(3, 3, '2020-08-31', '2024-06-25', '100'),
(4, 4, '2019-02-01', '2023-06-25', '200'),
(5, 5, '2018-09-01', '2022-06-25', '300'),
(6, 6, '2017-01-25', '2021-06-25', '300'),
(7, 7, '2019-09-06', '2023-06-25', '200'),
(8, 8, '2019-01-28', '2023-06-25', '200'),
(9, 9, '2018-09-01', '2022-06-25', '300'),
(10, 10, '2020-01-18', '2024-06-25', '100'),
(11, 11, '2020-08-31', '2024-06-25', '100'),
(12, 12, '2020-01-28', '2024-06-25', '100'),
(13, 13, '2020-09-01', '2024-06-25', '100'),
(14, 14, '2018-01-31', '2022-06-25', '200'),
(15, 15, '2018-09-01', '2022-06-25', '300'),
(16, 16, '2020-01-28', '2024-06-25', '100'),
(17, 17, '2020-08-31', '2024-06-25', '100'),
(18, 18, '2020-01-28', '2024-06-25', '100'),
(19, 19, '2018-09-01', '2022-06-25', '300'),
(20, 20, '2020-01-31', '2024-06-25', '100'),
(21, 21, '2020-09-18', '2024-06-25', '100'),
(22, 22, '2020-01-31', '2026-06-25', '100'),
(23, 23, '2020-08-31', '2024-06-25', '100'),
(24, 24, '2019-01-30', '2023-06-25', '200'),
(25, 25, '2020-09-01', '2024-06-25', '100'),
(26, 26, '2020-01-28', '2024-06-25', '100'),
(27, 27, '2019-09-01', '2023-06-25', '200'),
(28, 28, '2020 01-28', '2023-06-25', '100'),
(29, 29, '2020-09-01', '2024-06-25', '100'),
(30, 30, '2019-01-24', '2023-06-25', '200'),
(31, 31, '2020-09-18', '2024-06-25', '100'),
(32, 32, '2020-01-21', '2024-06-25', '100'),
(33, 33, '2018-09-01', '2022-06-25', '300'),
(34, 34, '2020-01-28', '2024-06-25', '100'),
(35, 35, '2020-09-01', '2024-06-25', '100'),
(36, 36, '2020-02-01', '2024-06-25', '100'),
(37, 37, '2019-09-11', '2023-06-25', '200'),
(38, 38, '2020-01-19', '2026-06-25', '100'),
(39, 39, '2020-09-08', '2024-06-25', '100'),
(40, 40, '2020-01-30', '2024-06-25', '100'),
(41, 41, '2020-08-28', '2024-06-25', '100'),
(42, 42, '2020-01-29', '2024-06-25', '100'),
(43, 43, '2020-09-21', '2024-06-25', '100'),
(44, 44, '2020-01-22', '2024-06-25', '100'),
(45, 45, '2020-09-01', '2024-06-25', '100');

/* Relationships:
- A Student belongs to one Faculty (Student -> Faculty).
- A Faculty can have many Students (Faculty -> Student).
- A Faculty offers many Courses (Faculty -> Course).
- A Course belongs to one Faculty (Course -> Faculty).
- A Student can enroll in many Courses (Student -> CourseEnrollment).
- A Course can have many Students enrolled (Course -> CourseEnrollment).
- A Lecturer belongs to one Faculty (Lecturer -> Faculty).
- A Faculty can have many Lecturers (Faculty -> Lecturer).
- A Lecturer can teach many Courses (Lecturer -> LecturerCourseAssignment).
- A Course can be taught by many Lecturers (Course -> LecturerCourseAssignment).
- A Student may be assigned to one Hostel (Student -> Hostel).
- A Hostel can accommodate many Students (Hostel -> Student).
- A Student may have one Meal Plan (Student -> MealPlan).
- A Meal Plan can be assigned to many Students (MealPlan -> Student).
- A Student can make many School Fees Payments (Student -> SchoolFeesPayment).
- A Faculty has many Departments (Faculty -> Department).
- A Department belongs to one Faculty (Department -> Faculty).
- A Department offers many Programs (Department -> Program).
- A Program belongs to one Department (Program -> Department).
- A Student enrolls in one Program (Student -> StudentProgram).
- A Program can have many Students (Program -> StudentProgram). */

/* Explanation of Tables:

1. Student: Stores basic student information, including their faculty, hostel, and meal plan.
2. Faculty: Stores information about the different faculties in the university (e.g., Natural Sciences, Managerial Sciences, Social Sciences).
3. Course: Stores information about the courses offered by the university.
4. CourseEnrollment: A junction table that tracks which students are enrolled in which courses, along with their grades.
5. Lecturer: Stores information about the lecturers.
6. LecturerCourseAssignment:  A junction table that tracks which lecturers are assigned to which courses.
7. Hostel: Stores information about the university's hostels.
8. MealPlan: Stores information about the different meal plans offered to students.
9. SchoolFeesPayment: Stores information about students' fee payments.
10. Department: Stores information about the departments.
11. Program: Stores information about the programs.
12. StudentProgram:  A junction table tracking which student is in which program */

/* Considerations:

- Data Types: Choose appropriate data types for each attribute (e.g., VARCHAR, INT, DATE, DECIMAL).
- Relationships: The relationships between entities are crucial for querying and data integrity.
- Indexing: Consider indexing frequently queried columns (e.g., StudentID, CourseID, FacultyID) to improve performance.
- Normalization: This design follows normalization principles to reduce data redundancy and improve data integrity.
- Scalability: The design can be scaled to accommodate a large number of students, courses, and other entities.
- Security: Implement appropriate security measures to protect sensitive student data.
- Further Features: This design can be extended to include other features, such as:
- Attendance tracking
- Library management
- Exam scheduling
- Transcript generation */
