USE UniversityPortalDB;
GO

CREATE TRIGGER trg_InsertLibraryMember_OnNewStudent
ON Students
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Library.Members (StudentID, FullName)
    SELECT 
        i.StudentID,
        i.FirstName + N' ' + i.LastName
    FROM inserted i;
END;
