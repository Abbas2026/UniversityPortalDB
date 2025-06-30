USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Userlink;

CREATE TABLE Education.Userlink (
    UserlinkID INT IDENTITY(1,1) PRIMARY KEY,
    EntityType NVARCHAR(50) NOT NULL,
    EntityID NVARCHAR(10) UNIQUE NOT NULL,		--national code--
);
INSERT INTO Education.Userlink (EntityType, EntityID)
VALUES (N'Admin', N'8247202328');
