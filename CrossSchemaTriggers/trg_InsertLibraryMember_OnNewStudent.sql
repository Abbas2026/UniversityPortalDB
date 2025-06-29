USE UniversityPortalDB;
GO

DROP TRIGGER IF EXISTS Education.trg_InsertLibraryMember_OnNewStudent;

CREATE TRIGGER trg_InsertLibraryMember_OnNewStudent
ON Education.Students
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
