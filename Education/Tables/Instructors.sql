USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Instructors;

CREATE TABLE Education.Instructors (
    InstructorID INT IDENTITY(30000,1) PRIMARY KEY,
    NationalCode NVARCHAR(10) UNIQUE NOT NULL,          
    FirstName NVARCHAR(50) NOT NULL,                
    LastName NVARCHAR(50) NOT NULL,               
    FatherName NVARCHAR(50),                        
    BirthDate DATE NOT NULL,                       
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    PhoneNumber VARCHAR(15),                        
    Email NVARCHAR(100),                            
    HireDate DATE NOT NULL,                         
    DepartmentID INT NOT NULL,		--fk                     
    Rank NVARCHAR(50),                            
    Status NVARCHAR(20) CHECK (Status IN ('Active', 'Retired', 'Resigned')),  

	CONSTRAINT FK_Instructors_Departments FOREIGN KEY (DepartmentID) REFERENCES Education.Departments(DepartmentID)
);
