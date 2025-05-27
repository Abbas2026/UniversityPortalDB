USE UniversityPortalDB
go
DROP TABLE IF EXISTS Courses;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,         
    CourseName NVARCHAR(100) NOT NULL,                 
    CourseCode NVARCHAR(20) UNIQUE NOT NULL,            
    Credits INT NOT NULL CHECK (Credits BETWEEN 0 AND 6),
    CourseType NVARCHAR(20) NOT NULL,                  
    Degree NVARCHAR(20) NOT NULL,                
    MajorID INT NULL,
    DepartmentID INT NOT NULL,                         
);
