USE UniversityPortalDB
GO

--DROP TRIGGER Library.trg_Borrow_Log_Delete

CREATE OR ALTER TRIGGER trg_Borrow_Log_UpdateIsReturnd
ON Library.Borrowing
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Library.BorrowingActivityLog (BorrowID, MemberID, CopyID, ActivityType)
    SELECT i.BorrowID, i.MemberID, i.CopyID, 'Returned'
    FROM inserted i
    INNER JOIN deleted d ON i.BorrowID = d.BorrowID
    WHERE d.IsReturnd = 0 AND i.IsReturnd = 1;
END;

