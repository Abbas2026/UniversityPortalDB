USE UniversityPortalDB
GO

DROP TRIGGER IF EXISTS Education.trg_AfterInsert_Student;
GO

CREATE TRIGGER trg_AfterInsert_Student
ON Education.Students
AFTER INSERT
AS
BEGIN
    INSERT INTO Userlink (EntityType, EntityID)
    SELECT 
        N'Student', 
        i.NationalCode
    FROM inserted i;
END;

