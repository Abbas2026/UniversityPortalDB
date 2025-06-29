USE UniversityPortalDB
GO


CREATE PROCEDURE Library.RecommendBooksForStudent
    @MemberID INT
AS
BEGIN
  
    SET NOCOUNT ON;

    WITH StudentBooks AS (
        SELECT DISTINCT bc.BookID
        FROM Library.Borrowing b
        JOIN Library.BookCopies bc ON b.CopyID = bc.CopyID
        WHERE b.MemberID = @MemberID
    ),
    SimilarStudents AS (
        SELECT b.MemberID
        FROM Library.Borrowing b
        JOIN Library.BookCopies bc ON b.CopyID = bc.CopyID
        WHERE bc.BookID IN (SELECT BookID FROM StudentBooks)
          AND b.MemberID != @MemberID
        GROUP BY b.MemberID
        HAVING COUNT(DISTINCT bc.BookID) >= 2
    ),
    OtherBooks AS (
        SELECT bc.BookID, COUNT(*) AS Score
        FROM Library.Borrowing b
        JOIN Library.BookCopies bc ON b.CopyID = bc.CopyID
        WHERE b.MemberID IN (SELECT MemberID FROM SimilarStudents)
          AND bc.BookID NOT IN (SELECT BookID FROM StudentBooks)
        GROUP BY bc.BookID
    )
    SELECT TOP 3 ob.BookID, bk.Title, ob.Score
    FROM OtherBooks ob
    JOIN Library.Books bk ON ob.BookID = bk.BookID
    ORDER BY ob.Score DESC;
END
