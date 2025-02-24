USE `UniversityDB`;


CREATE TABLE `Courses` (
    `CourseID` INT PRIMARY KEY AUTO_INCREMENT, 
    `CourseName` VARCHAR(100) NOT NULL        );



CREATE TABLE `Enrollments` (
    `EnrollmentID` INT PRIMARY KEY AUTO_INCREMENT,  
    `StudentID` INT,                               
    `CourseID` INT,                                
    `EnrollmentDate` DATE,                         
    CONSTRAINT `fk_student` FOREIGN KEY (`StudentID`) REFERENCES `Students`(`StudentID`),
    CONSTRAINT `fk_course` FOREIGN KEY (`CourseID`) REFERENCES `Courses`(`CourseID`)
);
