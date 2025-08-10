-- Create the StudentRegistrationDatabase
CREATE DATABASE StudentRegistrationSystem;
-- Select the database
USE StudentRegistrationSystem;
-- Create tables
CREATE TABLE STUDENTS (
StudentID INT PRIMARY KEY,
StudentFirstName VARCHAR(50),
StudentLastName VARCHAR(50)
);
CREATE TABLE COURSES (
CourseID INT PRIMARY KEY,
CourseName VARCHAR (50)
);
CREATE TABLE INSTRUCTORS (
InstructorName VARCHAR(50) PRIMARY KEY,
InstructorPhone VARCHAR(20)
);
CREATE TABLE COURSE_INSTRUCTOR (
CourseID INT,
InstructorName VARCHAR (50),
FOREIGN KEY (CourseID) REFERENCES COURSES (CourseID),
FOREIGN KEY (InstructorName) REFERENCES INSTRUCTORS(InstructorName)
);
CREATE TABLE COURSE_REGISTRATION (
StudentID INT,
CourseID INT,
SemesterTerm VARCHAR(20),
Grade VARCHAR(2),
FOREIGN KEY (StudentID) REFERENCES STUDENTS(StudentID),
FOREIGN KEY (CourseID) REFERENCES COURSES(CourseID)
);
-- Populating STUDENTS
INSERT INTO STUDENTS (StudentID, StudentFirstName, StudentLastName) VALUES (1, 'Jane', 'Doe'),
(2, 'John', 'Smith'),
(3, 'Alice', 'Brown'),
(4, 'Bob', 'Johnson'),
(5, 'Charlie', 'Davis'),
(6, 'Diana', 'Garcia'),
(7, 'Ethan', 'Martinez'),
(8, 'Fiona', 'Hernandez'),
(9, 'George', 'Lopez'),
(10, 'Hannah', 'Wilson'),
(11, 'Ian', 'Anderson'),
(12, 'Julia', 'Thomas'),
(13, 'Kevin', 'Taylor'),
(14, 'Laura', 'Moore'),
(15, 'Mike', 'Jackson'),
(16, 'Nina', 'Martin'),
(17, 'Oscar', 'Lee'),
(18, 'Paula', 'Perez'),
(19, 'Quinn', 'Thompson'),
(20, 'Ryan', 'White'),
(21, 'Sophia', 'Harris'),
(22, 'Tom', 'Clark'),
(23, 'Uma', 'Lewis'),
(24, 'Victor', 'Robinson'),
(25, 'Wendy', 'Walker');
-- Populating COURSES
INSERT INTO COURSES (CourseID, CourseName) VALUES (1, 'Mathematics'),
(2, 'Physics'),
(3, 'Chemistry'),
(4, 'Biology'),
(5, 'History'),
(6, 'Literature'),
(7, 'Computer Science'),
(8, 'Art'),
(9, 'Music'),
(10, 'Philosophy'),
(11, 'Economics'),
(12, 'Psychology'),
(13, 'Sociology'),
(14, 'Political Science'),
(15, 'Statistics'),
(16, 'Geography'),
(17, 'Engineering'),
(18, 'Business'),
(19, 'Nursing'),
(20, 'Education'),
(21, 'Law'),
(22, 'Environmental Science'),
(23, 'Information Technology'),
(24, 'Data Science'),
(25, 'Astronomy');
-- Populating INSTRUCTORS
INSERT INTO INSTRUCTORS (InstructorName, InstructorPhone) VALUES ('Dr. Smith', '123-456-7890'),
('Prof. Johnson', '234-567-8901'),
('Dr. Brown', '345-678-9012'),
('Prof. Garcia', '456-789-0123'),
('Dr. Martinez', '567-890-1234'),
('Prof. Hernandez', '678-901-2345'),
('Dr. Lopez', '789-012-3456'),
('Prof. Wilson', '890-123-4567'),
('Dr. Anderson', '901-234-5678'),
('Prof. Thomas', '012-345-6789'),
('Dr. Taylor', '123-456-7891'),
('Prof. Moore', '234-567-8902'),
('Dr. Jackson', '345-678-9013'),
('Prof. Martin', '456-789-0124'),
('Dr. Lee', '567-890-1235'),
('Prof. Perez', '678-901-2346'),
('Dr. Thompson', '789-012-3457'),
('Prof. White', '890-123-4568'),
('Dr. Harris', '901-234-5679'),
('Prof. Clark', '012-345-6780'),
('Dr. Lewis', '123-456-7892'),
('Prof. Robinson', '234-567-8903'),
('Dr. Walker', '345-678-9014'),
('Prof. Hall', '456-789-0125'),
('Dr. Allen', '567-890-1236'),
('Prof. Young', '678-901-2347');
-- Populating COURSE_INSTRUCTOR
INSERT INTO COURSE_INSTRUCTOR (CourseID, InstructorName) VALUES (1, 'Dr. Smith'),
(2, 'Prof. Johnson'),
(3, 'Dr. Brown'),
(4, 'Prof. Garcia'),
(5, 'Dr. Martinez'),
(6, 'Prof. Hernandez'),
(7, 'Dr. Lopez'),
(8, 'Prof. Wilson'),
(9, 'Dr. Anderson'),
(10, 'Prof. Thomas'),
(11, 'Dr. Taylor'),
(12, 'Prof. Moore'),
(13, 'Dr. Jackson'),
(14, 'Prof. Martin'),
(15, 'Dr. Lee'),
(16, 'Prof. Perez'),
(17, 'Dr. Thompson'),
(18, 'Prof. White'),
(19, 'Dr. Harris'),
(20, 'Prof. Clark'),
(21, 'Dr. Lewis'),
(22, 'Prof. Robinson'),
(23, 'Dr. Walker'),
(24, 'Prof. Hall'),
(25, 'Dr. Allen');
-- Populating COURSE_REGISTRATION
INSERT INTO COURSE_REGISTRATION (StudentID, CourseID, SemesterTerm, Grade) VALUES
 (1, 1, 'Fall 2024', 'A'),
(1, 2, 'Fall 2024', 'B'),
(2, 1, 'Fall 2024', 'C'),
(2, 3, 'Fall 2024', 'A'),
(3, 2, 'Fall 2024', 'B'),
(3, 4, 'Fall 2024', 'A'),
(4, 1, 'Fall 2024', 'B'),
(4, 5, 'Fall 2024', 'C'),
(5, 3, 'Fall 2024', 'A'),
(5, 4, 'Fall 2024', 'B'),
(6, 2, 'Fall 2024', 'A'),
(6, 6, 'Fall 2024', 'B'),
(7, 1, 'Fall 2024', 'C'),
(7, 7, 'Fall 2024', 'A'),
(8, 3, 'Fall 2024', 'B'),
(8, 5, 'Fall 2024', 'A'),
(9, 2, 'Fall 2024', 'C'),
(9, 6, 'Fall 2024', 'B'),
(10, 1, 'Fall 2024', 'A'),
(10, 4, 'Fall 2024', 'B'),
(11, 3, 'Fall 2024', 'A'),
(11, 5, 'Fall 2024', 'C'),
(12, 2, 'Fall 2024', 'B'),
(12, 6, 'Fall 2024', 'A'),
(13, 1, 'Fall 2024', 'C'),
(13, 3, 'Fall 2024', 'B'),
(14, 4, 'Fall 2024', 'A'),
(14, 5, 'Fall 2024', 'B'),
(15, 2, 'Fall 2024', 'A'),
(15, 6, 'Fall 2024', 'C'),
(16, 1, 'Fall 2024', 'B'),
(16, 3, 'Fall 2024', 'A'),
(17, 2, 'Fall 2024', 'C'),
(17, 4, 'Fall 2024', 'B'),
(18, 5, 'Fall 2024', 'A'),
(18, 6, 'Fall 2024', 'B'),
(19, 1, 'Fall 2024', 'A'),
(19, 2, 'Fall 2024', 'B'),
(20, 3, 'Fall 2024', 'C'),
(20, 4, 'Fall 2024', 'A'),
(21, 5, 'Fall 2024', 'B'),
(21, 6, 'Fall 2024', 'C'),
(22, 1, 'Fall 2024', 'A'),
(22, 2, 'Fall 2024', 'B'),
(23, 3, 'Fall 2024', 'C'),
(23, 4, 'Fall 2024', 'A'),
(24, 5, 'Fall 2024', 'B'),
(24, 6, 'Fall 2024', 'C'),
(25, 1, 'Fall 2024', 'A'),
(25, 2, 'Fall 2024', 'B');

-- Retrieving Data from students who have a B grade
SELECT STUDENTS.StudentFirstName, STUDENTS.StudentLastName, COURSE_REGISTRATION.Grade
FROM STUDENTS
JOIN COURSE_REGISTRATION ON STUDENTS.StudentID = COURSE_REGISTRATION.StudentID
WHERE COURSE_REGISTRATION.Grade = 'B' ;

-- Updating records for students with a B grade to A-
UPDATE COURSE_REGISTRATION
SET Grade ='A-'
WHERE Grade = "B" ;

-- Showing all students who earned an A grade in a semester
SELECT s.StudentFirstName, s.StudentLastName, cr.Grade, cr.SemesterTerm
FROM STUDENTS s
JOIN COURSE_REGISTRATION cr ON s.StudentID = cr.StudentID
WHERE cr.Grade = 'A';

