DROP PROCEDURE IF EXISTS Library.proc_send_due_reminders;

CREATE PROCEDURE Library.proc_send_due_reminders AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Library.Logs_Library (EventType, Description)
    SELECT 
        N'alert', 
        CAST(b.MemberID AS NVARCHAR(50)) + N' Return date alert!'
    FROM Library.Borrowing b
    WHERE 
        b.IsReturnd = 0
        AND DATEDIFF(DAY, CAST(GETDATE() AS DATE), b.DueDate) BETWEEN 0 AND 3
END
