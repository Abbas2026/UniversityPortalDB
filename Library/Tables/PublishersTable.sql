USE UniversityPortalDB

DROP TABLE IF EXISTS Publishers

CREATE TABLE Library.Publishers (
    PublisherID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);