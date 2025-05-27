USE UniversityPortalDB
GO

CREATE TRIGGER trg_AfterInsert_Admin
ON Admins
AFTER INSERT
AS
BEGIN
    INSERT INTO Userlink (EntityType, EntityID)
    SELECT 
        N'Admin', 
        i.NationalCode
    FROM inserted i;
END;
