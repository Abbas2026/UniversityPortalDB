USE UniversityPortalDB
GO

--DROP TRIGGER Library.trg_AfterInsert_Borrowing

CREATE TRIGGER trg_AfterInsert_Borrowing
ON Library.Borrowing
AFTER INSERT
AS
BEGIN
    UPDATE bc
    SET bc.IsAvailable = 0
    FROM Library.BookCopies bc
    JOIN inserted i ON bc.CopyID = i.CopyID
END;
