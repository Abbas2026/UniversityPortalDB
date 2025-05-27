USE UniversityPortalDB
go
DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    NationalCode CHAR(10) UNIQUE NOT NULL,         
    FirstName NVARCHAR(50) NOT NULL,              
    LastName NVARCHAR(50) NOT NULL,                
    FatherName NVARCHAR(50),                    
    BirthDate DATE NOT NULL,                       
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),  
    PhoneNumber VARCHAR(15),                       
    Email NVARCHAR(100),                      
    AddressID INT,          --fk                
    EntryYear INT NOT NULL,     
	DepartmentID INT,		--fk
	MajorID INT,            --fk              
	Status_Education NVARCHAR(20) CHECK (Status_Education IN ('Active', 'Expelled', 'Graduated', 'Dropped')),
);
