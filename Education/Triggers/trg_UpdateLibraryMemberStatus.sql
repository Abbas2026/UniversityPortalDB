USE UniversityPortalDB;
GO

CREATE OR ALTER TRIGGER trg_UpdateMemberIsActive
ON Students
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE m
    SET m.IsActive = 0
    FROM Library.Members m
    INNER JOIN inserted i ON m.StudentID = i.StudentID
    INNER JOIN deleted d ON i.StudentID = d.StudentID
    WHERE d.Status_Education = 'Active' AND i.Status_Education <> 'Active';
END;
