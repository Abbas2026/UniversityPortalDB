USE UniversityPortalDB
go
DROP TABLE IF EXISTS Userlink;

CREATE TABLE Userlink (
    UserlinkID INT IDENTITY(1,1) PRIMARY KEY,
    EntityType NVARCHAR(50) NOT NULL,
    EntityID INT UNIQUE NOT NULL,		
);