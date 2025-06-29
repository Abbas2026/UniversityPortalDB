USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;


    DELETE FROM Education.Userlink
    WHERE EntityType = N'Student';


    DELETE A
    FROM Education.Addresses A
    INNER JOIN Education.Students S ON A.EntityType = N'Student' AND A.EntityID = S.NationalCode;

    DELETE FROM Education.Students
	DBCC CHECKIDENT ('Education.Students', RESEED, 10000);


    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;