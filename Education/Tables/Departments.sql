USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Departments;

CREATE TABLE Education.Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,    
    DepartmentName NVARCHAR(100)UNIQUE NOT NULL,         
    HeadOfDepartment NVARCHAR(100),                       
    OfficePhone VARCHAR(15),                       
    Email NVARCHAR(100)                                                         
);

