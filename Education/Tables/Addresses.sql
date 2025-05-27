USE UniversityPortalDB
go
DROP TABLE IF EXISTS Addresses;

CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY,
	Country NVARCHAR(50) NOT NULL,       
    Province NVARCHAR(50) NOT NULL,       
    City NVARCHAR(50) NOT NULL,            
    Street NVARCHAR(100),                
    Alley NVARCHAR(100),     
	PlaqueNumber NVARCHAR(10),             
    PostalCode CHAR(10),                   
    ExtraDescription NVARCHAR(255)        
);
