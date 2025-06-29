USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Majors;

CREATE TABLE Education.Majors (
    MajorID INT IDENTITY(1,1) PRIMARY KEY,         
    MajorName NVARCHAR(100) NOT NULL,               
    MajorCode NVARCHAR(10) UNIQUE NOT NULL,          
    Degree NVARCHAR(20) NOT NULL,              
    DepartmentID INT NOT NULL,       --fk          
	
	CONSTRAINT FK_Majors_Departments FOREIGN KEY (DepartmentID) REFERENCES Education.Departments(DepartmentID)
);
