USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;


    DELETE FROM Userlink
    WHERE EntityType = N'Instructor' ;


    DELETE A
    FROM Addresses A
    INNER JOIN Instructors I ON A.EntityType = N'Instructor' AND A.EntityID = I.NationalCode;

    DELETE FROM Instructors
	DBCC CHECKIDENT ('Instructors', RESEED, 30000);


    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
