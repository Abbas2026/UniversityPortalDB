USE UniversityPortalDB
GO

--DROP TRIGGER Library.trg_Borrow_Log_Insert

CREATE TRIGGER trg_Borrow_Log_Insert
ON Library.Borrowing
AFTER INSERT
AS
BEGIN
    INSERT INTO Library.BorrowingActivityLog (BorrowID, MemberID,CopyID, ActivityType)
    SELECT BorrowID, MemberID,CopyID, 'Borrowed'
    FROM inserted;
END;

