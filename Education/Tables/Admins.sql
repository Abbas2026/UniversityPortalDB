USE UniversityPortalDB
go
DROP TABLE IF EXISTS Admins;

CREATE TABLE Admins (
    AdminID INT IDENTITY(20000,1) PRIMARY KEY,
	NationalCode CHAR(10) UNIQUE NOT NULL,          
    Firstname NVARCHAR(50) NOT NULL,
    Lastname NVARCHAR(50) NOT NULL,
    Role_user NVARCHAR(30) NOT NULL,         
    PhoneNumber VARCHAR(15),                        
    Email NVARCHAR(100),   
	AddressID INT,          --fk                

);
