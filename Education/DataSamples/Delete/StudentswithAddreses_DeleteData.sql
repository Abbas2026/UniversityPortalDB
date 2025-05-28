USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;


    DELETE FROM Userlink
    WHERE EntityType = N'Student' ;


    DELETE A
    FROM Addresses A
    INNER JOIN Students S ON A.EntityType = N'Student' AND A.EntityID = S.NationalCode;

    DELETE FROM Students

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;