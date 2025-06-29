USE UniversityPortalDB;
GO

CREATE FUNCTION Library.fn_Top5BorrowedCopies()
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 5 
        B.CopyID, 
        COUNT(*) AS CountOfBorrowed
    FROM Library.Borrowing B
    GROUP BY B.CopyID
    ORDER BY COUNT(*) DESC
);
