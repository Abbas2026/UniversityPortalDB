USE UniversityPortalDB
GO

DROP TRIGGER IF EXISTS Education.trg_AfterInsert_Admin;
GO

CREATE TRIGGER trg_AfterInsert_Admin
ON Education.Admins
AFTER INSERT
AS
BEGIN
    INSERT INTO Userlink (EntityType, EntityID)
    SELECT 
        N'Admin', 
        i.NationalCode
    FROM inserted i;
END;
