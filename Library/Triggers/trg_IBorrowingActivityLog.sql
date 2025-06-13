USE UniversityPortalDB
GO
CREATE TRIGGER trg_Borrow_Log_Insert
ON Library.Borrowing
AFTER INSERT
AS
BEGIN
    INSERT INTO Library.BorrowingActivityLog (BorrowID, MemberID,CopyID, ActivityType)
    SELECT BorrowID, MemberID,CopyID, 'Borrowed'
    FROM inserted;
END;

