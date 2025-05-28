USE UniversityPortalDB
go
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,    
    DepartmentName NVARCHAR(100) NOT NULL,         
    HeadOfDepartment NVARCHAR(100),                       
    OfficePhone VARCHAR(15),                       
    Email NVARCHAR(100)                                                         
);
