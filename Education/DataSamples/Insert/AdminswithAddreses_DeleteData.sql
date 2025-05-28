USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;

	DELETE A
    FROM Addresses A
    INNER JOIN Admins Ad ON A.EntityType = N'Admin' AND A.EntityID = Ad.NationalCode;

    DELETE FROM Userlink
    WHERE EntityType = N'Admin';

    DELETE FROM Admins;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
