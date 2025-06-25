CREATE TRIGGER Library.trg_prevent_deactivate_active_member
ON Library.Members
INSTEAD OF UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.MemberID = d.MemberID
        WHERE i.IsActive = 0 AND d.IsActive = 1
          AND EXISTS (
                SELECT 1
                FROM Library.Borrowing b
                WHERE b.MemberID = i.MemberID
                  AND b.IsReturnd = 0
          )
    )
    BEGIN
        RAISERROR(N'This member has unreturned borrowed books and cannot be deactivated.', 16, 1);
        RETURN;
    END

    UPDATE m
    SET
        m.StudentID   = i.StudentID,
        m.FullName    = i.FullName,
        m.RegisterDate= i.RegisterDate,
        m.IsActive    = i.IsActive
    FROM Library.Members m
    INNER JOIN inserted i ON m.MemberID = i.MemberID
END
