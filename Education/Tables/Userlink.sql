USE UniversityPortalDB
go
DROP TABLE IF EXISTS Userlink;

CREATE TABLE Userlink (
    UserlinkID INT IDENTITY(1,1) PRIMARY KEY,
    EntityType NVARCHAR(50) NOT NULL,
    EntityID NVARCHAR(10) UNIQUE NOT NULL,		--national code--
);
