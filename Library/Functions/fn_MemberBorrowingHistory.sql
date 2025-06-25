USE UniversityPortalDB
GO


CREATE FUNCTION Library.fn_MemberBorrowingHistory(@MemberID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        b.BorrowID,
        c.CopyID,
        bo.BookID,
        bo.Title,
        b.BorrowDate,
        b.DueDate
    FROM Library.Borrowing AS b
    JOIN Library.BookCopies AS c ON b.CopyID = c.CopyID
    JOIN Library.Books AS bo ON c.BookID = bo.BookID
    WHERE b.MemberID = @MemberID
);
