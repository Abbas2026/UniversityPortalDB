USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;


    DELETE FROM Education.Userlink
    WHERE EntityType = N'Instructor' ;


    DELETE A
    FROM Education.Addresses A
    INNER JOIN Education.Instructors I ON A.EntityType = N'Instructor' AND A.EntityID = I.NationalCode;

    DELETE FROM Education.Instructors
	DBCC CHECKIDENT ('Education.Instructors', RESEED, 30000);


    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
