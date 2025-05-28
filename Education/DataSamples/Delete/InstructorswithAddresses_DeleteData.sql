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

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;

select *
from instructors;

select *
from userlink;

select *
from addresses;

select *
from admins;