USE UniversityPortalDB
go
DROP TABLE IF EXISTS Instructors;

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    NationalCode CHAR(10) UNIQUE NOT NULL,          
    FirstName NVARCHAR(50) NOT NULL,                
    LastName NVARCHAR(50) NOT NULL,               
    FatherName NVARCHAR(50),                        
    BirthDate DATE NOT NULL,                       
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    PhoneNumber VARCHAR(15),                        
    Email NVARCHAR(100),                            
    AddressID INT,                  --fk                 
    HireDate DATE NOT NULL,                         
    DepartmentID INT NOT NULL,		--fk                     
    Rank NVARCHAR(50),                            
    Status NVARCHAR(20) CHECK (Status IN ('Active', 'Retired', 'Resigned')),  

);
