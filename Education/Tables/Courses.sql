USE UniversityPortalDB
go
DROP TABLE IF EXISTS Courses;

CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,         
    CourseName NVARCHAR(100) UNIQUE NOT NULL,                 
    CourseCode NVARCHAR(20) UNIQUE NOT NULL,            
    Credits INT NOT NULL CHECK (Credits BETWEEN 0 AND 6),
    CourseType NVARCHAR(20) NOT NULL,                  
    Degree NVARCHAR(20) NOT NULL,                
    MajorID INT NULL,						--fk
    DepartmentID INT NOT NULL,              --fk    
	
	CONSTRAINT FK_Courses_Major FOREIGN KEY (MajorID) REFERENCES Majors(MajorID),
	CONSTRAINT FK_Courses_Departments FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
