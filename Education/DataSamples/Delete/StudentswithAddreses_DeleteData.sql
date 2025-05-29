USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;


    DELETE FROM Userlink
    WHERE EntityType = N'Student';


    DELETE A
    FROM Addresses A
    INNER JOIN Students S ON A.EntityType = N'Student' AND A.EntityID = S.NationalCode;

    DELETE FROM Students
	DBCC CHECKIDENT ('Students', RESEED, 10000);


    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;