USE UniversityPortalDB;
GO

select *
from Library.Members

select *
from Library.Authors

select *
from Library.Publishers

select *
from Library.Categories

select *
from Library.Books


DECLARE @DueDate DATE = CAST(DATEADD(DAY, 2, GETDATE()) AS DATE);

EXEC Library.sp_BorrowBook 
    @MemberID = 1, 
    @CopyID = 1, 
    @DueDate = @DueDate;

select *
from Library.Borrowing

DECLARE @ReturnDate DATE = GETDATE();

EXEC Library.sp_ReturnBook 
    @BorrowID = 2,
    @ReturnDate = @ReturnDate

select *
from Library.Returns

EXEC Library.proc_send_due_reminders;

SELECT * FROM Library.Logs_Library 
WHERE EventType = 'alert'
ORDER BY LogID DESC;

select *
from Library.Fines

select *
from Library.BookCopies

select *
from Library.BookAuthors

