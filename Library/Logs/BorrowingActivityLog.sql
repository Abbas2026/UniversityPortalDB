USE UniversityPortalDB

DROP TABLE IF EXISTS Library.BorrowingActivityLog;

CREATE TABLE Library.BorrowingActivityLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    BorrowID INT,
    MemberID INT,
    CopyID INT,
    ActivityType NVARCHAR(100),
    EventDate DATETIME DEFAULT GETDATE()
);
