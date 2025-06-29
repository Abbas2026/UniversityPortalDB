USE UniversityPortalDB
GO

DROP TRIGGER IF EXISTS Education.trg_AfterInsert_Instructor;
GO

CREATE TRIGGER trg_AfterInsert_Instructor
ON Education.Instructors
AFTER INSERT
AS
BEGIN
    INSERT INTO Userlink (EntityType, EntityID)
    SELECT 
        N'Instructor', 
        i.NationalCode
    FROM inserted i;
END;
