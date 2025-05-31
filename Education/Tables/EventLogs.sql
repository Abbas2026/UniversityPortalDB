USE UniversityPortalDB
go
DROP TABLE IF EXISTS EventLogs;

CREATE TABLE EventLogs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    EventType NVARCHAR(50),       
    TableName NVARCHAR(50),         
    RecordID INT,                   
    EventDescription NVARCHAR(255), 
    EventDate DATETIME DEFAULT GETDATE(),
    TriggeredBy NVARCHAR(100) DEFAULT SYSTEM_USER 
);
