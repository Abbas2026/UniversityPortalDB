USE UniversityPortalDB

DROP TABLE IF EXISTS Logs_Library

CREATE TABLE Library.Logs_Library (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    EventType NVARCHAR(100),
    Description NVARCHAR(300),
    EventDate DATETIME DEFAULT GETDATE()
);