USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Students;

CREATE TABLE Education.Students (
    StudentID INT IDENTITY(10000,1) PRIMARY KEY,
    NationalCode NVARCHAR(10) UNIQUE NOT NULL,         
    FirstName NVARCHAR(50) NOT NULL,              
    LastName NVARCHAR(50) NOT NULL,                
    FatherName NVARCHAR(50),                    
    BirthDate DATE NOT NULL,                       
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),  
    PhoneNumber VARCHAR(15),                       
    Email NVARCHAR(100),                      
    EntryYear INT NOT NULL,     
	DepartmentID INT,		--fk
	MajorID INT,            --fk              
	Status_Education NVARCHAR(20) CHECK (Status_Education IN ('Active', 'Expelled', 'Graduated', 'Dropped')),

	CONSTRAINT FK_Students_Departments FOREIGN KEY (DepartmentID) REFERENCES Education.Departments(DepartmentID),
    CONSTRAINT FK_Students_Majors FOREIGN KEY (MajorID) REFERENCES Education.Majors(MajorID)
);

