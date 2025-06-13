USE UniversityPortalDB
GO

CREATE TRIGGER trg_Borrow_Log_Delete
ON Library.Borrowing
AFTER DELETE
AS
BEGIN
    INSERT INTO Library.BorrowingActivityLog (BorrowID, MemberID, CopyID, ActivityType)
    SELECT BorrowID, MemberID, CopyID, 'Returned'
    FROM deleted;
END;
