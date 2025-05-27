USE UniversityPortalDB
GO

CREATE TRIGGER trg_AfterInsert_Student
ON Students
AFTER INSERT
AS
BEGIN
    INSERT INTO Userlink (EntityType, EntityID)
    SELECT 
        N'Student', 
        i.NationalCode
    FROM inserted i;
END;

