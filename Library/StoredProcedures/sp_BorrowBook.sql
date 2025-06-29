USE UniversityPortalDB
GO

CREATE OR ALTER PROCEDURE Library.sp_BorrowBook
    @MemberID INT,
    @CopyID INT,
    @DueDate DATE
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM Library.Members WHERE MemberID = @MemberID)
    BEGIN
        PRINT 'Invalid MemberID.';
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM Library.BookCopies WHERE CopyID = @CopyID)
    BEGIN
        PRINT 'Invalid CopyID.';
        RETURN;
    END

    IF NOT EXISTS (
        SELECT 1 FROM Library.BookCopies
        WHERE CopyID = @CopyID AND IsAvailable = 1
    )
    BEGIN
        PRINT 'The selected book is not currently available.';
        RETURN;
    END

    INSERT INTO Library.Borrowing (MemberID, CopyID, DueDate)
    VALUES (@MemberID, @CopyID, @DueDate);

    UPDATE Library.BookCopies
    SET IsAvailable = 0
    WHERE CopyID = @CopyID;

    PRINT 'Book borrowed successfully.';
END;
