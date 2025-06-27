USE UniversityPortalDB;
GO

CREATE TRIGGER trg_DeactivateLibraryMember_OnStatusChange
ON Students
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Library.Members
    SET IsActive = 0
    FROM Library.Members m
    INNER JOIN inserted i ON m.StudentID = i.StudentID
    INNER JOIN deleted d ON i.StudentID = d.StudentID
    WHERE 
        i.Status_Education IN (N'Expelled', N'Graduated', N'Dropped') AND
        d.Status_Education = N'Active';  
END;
