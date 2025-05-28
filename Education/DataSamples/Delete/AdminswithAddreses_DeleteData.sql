USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @AdminNationalCodes TABLE (NationalCode NVARCHAR(50));
    INSERT INTO @AdminNationalCodes VALUES
        (N'0049944029'),
        (N'0109247183'),
        (N'0123456789'),
        (N'0927377586'),
        (N'0054123798'),
        (N'0038561425'),
        (N'0084574143'),
        (N'1468392751'),
        (N'1987325461'),
        (N'0178546321');

    DELETE FROM Userlink
    WHERE EntityType = N'Admin'
      AND EntityID IN (SELECT NationalCode FROM @AdminNationalCodes);

    DELETE A
    FROM Addresses A
    INNER JOIN Admins Ad ON A.EntityType = N'Admin' AND A.EntityID = Ad.AdminID
    WHERE Ad.NationalCode IN (SELECT NationalCode FROM @AdminNationalCodes);

    DELETE FROM Admins
    WHERE NationalCode IN (SELECT NationalCode FROM @AdminNationalCodes);

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
