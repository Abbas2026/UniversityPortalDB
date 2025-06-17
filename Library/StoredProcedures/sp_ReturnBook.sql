USE UniversityPortalDB
GO
ALTER PROCEDURE Library.sp_ReturnBook
    @BorrowID INT,
    @ReturnDate DATE
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM Library.Borrowing WHERE BorrowID = @BorrowID)
    BEGIN
        PRINT 'Invalid BorrowID.';
        RETURN;
    END

    DECLARE @DueDate DATE, @CopyID INT, @MemberID INT;
    DECLARE @DaysLate INT = 0;

    SELECT @DueDate = DueDate, @CopyID = CopyID, @MemberID = MemberID
    FROM Library.Borrowing
    WHERE BorrowID = @BorrowID;

    SET @DaysLate = DATEDIFF(DAY, @DueDate, @ReturnDate);

    INSERT INTO Library.Returns (BorrowID, ReturnDate, IsLate, DaysLate)
    VALUES (
        @BorrowID,
        @ReturnDate,
        CASE WHEN @DaysLate > 0 THEN 1 ELSE 0 END,
        CASE WHEN @DaysLate > 0 THEN @DaysLate ELSE 0 END
    );

    
    UPDATE Library.Borrowing
    SET IsReturnd = 1
    WHERE BorrowID = @BorrowID;

    UPDATE Library.BookCopies
    SET IsAvailable = 1
    WHERE CopyID = @CopyID;

    IF @DaysLate > 0
    BEGIN
        DECLARE @FineAmount DECIMAL(10,2);
        SET @FineAmount = @DaysLate * 1000;  -- Example: 1000 per day

        INSERT INTO Library.Fines (MemberID, Amount, Description)
        VALUES (
            @MemberID,
            @FineAmount,
            CONCAT('Late return of book copy ID ', @CopyID, ' by ', @DaysLate, ' day(s).')
        );
    END

    PRINT 'Book returned successfully.';
END;
