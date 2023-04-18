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
  FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id),
  FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


-- create three test courses
INSERT INTO Courses VALUES(1, 'math', 202, "Calculus II", "Fall", 2022);
INSERT INTO Courses VALUES(2, 'computer science', 351, "Robotics", "Fall", 2022);


-- create 7 arbitary students
INSERT INTO Students VALUES(4, 'Barsha', 'Chadhaury',00);
INSERT INTO Students VALUES(6, 'Chunmei', 'Liu',00);
INSERT INTO Students VALUES(7, 'Harry', 'Keeling',00);
INSERT INTO Students VALUES(8, 'Bugs', 'Bunny',00);
INSERT INTO Students VALUES(9, 'Noha', 'Hazzazi',00);
INSERT INTO Students VALUES(10, 'Linwei', 'Niu',00);
INSERT INTO Students VALUES(11, 'John', 'Qui',00);


-- create assignments for course_id 1: Calculus
INSERT INTO Assignments VALUES(6, 'Participation', 10.0, 1);
INSERT INTO Assignments VALUES(7, 'Homework', 20.0, 1);
INSERT INTO Assignments VALUES(8, 'Tests', 50.0, 1);
INSERT INTO Assignments VALUES(9, 'Projects', 20.0, 1);
INSERT INTO Assignments VALUES(10, 'Final Exam', 30.0, 1);

-- create assignments for course_id 2: Robotics
INSERT INTO Assignments VALUES(11, 'Participation', 10.0, 2);
INSERT INTO Assignments VALUES(12, 'Homework', 20.0, 2);
INSERT INTO Assignments VALUES(13, 'Tests', 50.0, 2);
INSERT INTO Assignments VALUES(14, 'Projects', 20.0, 2);
INSERT INTO Assignments VALUES(15, 'Final Exam', 30.0, 2);


-- create grades for assignments for student 4 in course 1
-- grade_id, assignment_id, student_id, score
INSERT INTO Grade VALUES(1,6,4,100.0);
INSERT INTO Grade VALUES(2,7,4,100.0);
INSERT INTO Grade VALUES(3,8,4,100.0);
INSERT INTO Grade VALUES(4,9,4,100.0);
INSERT INTO Grade VALUES(5,10,4,100.0);


-- create grades for assignments for student 6 in course 1
-- grade_id, assignment_id, student_id, score
INSERT INTO Grade VALUES(6,6,6,95.3);
INSERT INTO Grade VALUES(7,7,6,76.5);
INSERT INTO Grade VALUES(8,8,6,89.2);
INSERT INTO Grade VALUES(9,9,6,67.5);
INSERT INTO Grade VALUES(10,10,6,100.0);



-- create grades for assignments for student 4 in course 2
INSERT INTO Grade VALUES(11,11,4,89.9);
INSERT INTO Grade VALUES(12,12,4,94.7);
INSERT INTO Grade VALUES(13,13,4,87.5);
INSERT INTO Grade VALUES(14,14,4,99.3);
INSERT INTO Grade VALUES(15,15,4,100.0);


-- create grades for assignments for student 6 in course 2 
INSERT INTO Grade VALUES(16,11,6,100.0);
INSERT INTO Grade VALUES(17,12,6,94.2);
INSERT INTO Grade VALUES(18,13,6,78.9);
INSERT INTO Grade VALUES(19,14,6,99.5);
INSERT INTO Grade VALUES(20,15,6,92.1);




