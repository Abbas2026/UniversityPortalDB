USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;

	DELETE A
    FROM Education.Addresses A
    INNER JOIN Education.Admins Ad ON A.EntityType = N'Admin' AND A.EntityID = Ad.NationalCode;

    DELETE FROM Education.Userlink
    WHERE EntityType = N'Admin';

    DELETE FROM Education.Admins;
	DBCC CHECKIDENT ('Education.Admins', RESEED, 20000);


    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
