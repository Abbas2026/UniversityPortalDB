USE UniversityPortalDB
GO

CREATE TRIGGER trg_AfterInsert_Instructor
ON Instructors
AFTER INSERT
AS
BEGIN
    INSERT INTO Userlink (EntityType, EntityID)
    SELECT 
        N'Instructor', 
        i.NationalCode
    FROM inserted i;
END;
