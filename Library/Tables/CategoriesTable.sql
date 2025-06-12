USE UniversityPortalDB

DROP TABLE IF EXISTS Categories


CREATE TABLE Library.Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);