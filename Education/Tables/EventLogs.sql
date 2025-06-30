USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.EventLogs;

CREATE TABLE Education.EventLogs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    EventType NVARCHAR(50),       
    TableName NVARCHAR(50),         
    RecordID NVARCHAR(50),                   
    EventDescription NVARCHAR(255), 
    EventDate DATETIME DEFAULT GETDATE(),
    TriggeredBy NVARCHAR(100) DEFAULT SYSTEM_USER 
);
