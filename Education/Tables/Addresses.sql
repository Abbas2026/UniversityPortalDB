USE UniversityPortalDB;
GO

DROP TABLE IF EXISTS Addresses;

CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY IDENTITY(1,1),
    EntityType NVARCHAR(30) NOT NULL, 
    EntityID NVARCHAR(10) UNIQUE NOT NULL,            
    Country NVARCHAR(50) NOT NULL,       
    Province NVARCHAR(50) NOT NULL,       
    City NVARCHAR(50) NOT NULL,            
    Street NVARCHAR(100),                
    Alley NVARCHAR(100),     
    PlaqueNumber NVARCHAR(10),             
    PostalCode CHAR(10),                   
    ExtraDescription NVARCHAR(255)
);

DELETE FROM Addresses;
DBCC CHECKIDENT ('Majors', RESEED, 0);
