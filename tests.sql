DROP TABLE IF EXISTS Courses;
CREATE TABLE Courses(
  course_id int PRIMARY KEY,
  department varchar(255),
  course_number int,
  course_name varchar(255),
  semester varchar(255),
  year int

);


DROP TABLE IF EXISTS Students;
CREATE TABLE Students(
  student_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  course_id INT

);


DROP TABLE IF EXISTS Assignments;
CREATE TABLE Assignments(
  assignment_id INT PRIMARY KEY,
  category VARCHAR(255),
  percentage DECIMAL(5,2),
  course_id INT,
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)

);

DROP TABLE IF EXISTS Grade;
CREATE TABLE Grade(
  grade_id INT PRIMARY KEY,
  assignment_id INT,
  student_id INT,
  score DECIMAL(5,2),
  FOREIGN KEY (assignment_id) REFERENCES Assignment(assignment_id),
  FOREIGN KEY (student_id) REFERENCES Student(student_id)
);


-- create three test courses
INSERT INTO Courses VALUES(1, 'math', 202, "Calculus II", "Fall", 2022);
INSERT INTO Courses VALUES(2, 'computer science', 351, "Robotics", "Fall", 2022);
INSERT INTO Courses VALUES(3, 'math', 181, "Discrete Structures", "Fall", 2021);


-- create 7 arbitary students
INSERT INTO Students VALUES(4, 'Barsha', 'Chadhaury',00);
INSERT INTO Students VALUES(6, 'Chunmei', 'Liu',00);
INSERT INTO Students VALUES(7, 'Harry', 'Keeling',00);
INSERT INTO Students VALUES(8, 'Bugs', 'Bunny',00);
INSERT INTO Students VALUES(9, 'Noha', 'Hazzazi',00);
INSERT INTO Students VALUES(10, 'Linwei', 'Niu',00);
INSERT INTO Students VALUES(11, 'John', 'Qui',00);


-- create assignments for course_id 1
INSERT INTO Assignments VALUES(6, 'Participation', 10.0, 1);
INSERT INTO Assignments VALUES(7, 'Homework', 20.0, 1);
INSERT INTO Assignments VALUES(8, 'Tests', 50.0, 1);
INSERT INTO Assignments VALUES(9, 'Projects', 20.0, 1);
INSERT INTO Assignments VALUES(10, 'Final Exam', 30.0, 1);

-- create assignments for course_id 2
INSERT INTO Assignments VALUES(11, 'Participation', 10.0, 2);
INSERT INTO Assignments VALUES(12, 'Homework', 20.0, 2);
INSERT INTO Assignments VALUES(13, 'Tests', 50.0, 2);
INSERT INTO Assignments VALUES(14, 'Projects', 20.0, 2);
INSERT INTO Assignments VALUES(15, 'Final Exam', 30.0, 2);

-- create assignments for course_id 3
INSERT INTO Assignments VALUES(16, 'Participation', 10.0, 3);
INSERT INTO Assignments VALUES(17, 'Homework', 20.0, 3);
INSERT INTO Assignments VALUES(18, 'Tests', 50.0, 3);
INSERT INTO Assignments VALUES(19, 'Projects', 20.0, 3);
INSERT INTO Assignments VALUES(20, 'Final Exam', 30.0, 3);


Select * From Courses; 


