USE UniversityPortalDB;
GO
DROP PROCEDURE IF EXISTS usp_RegisterAdminWithAddress;
GO

CREATE PROCEDURE usp_RegisterAdminWithAddress
    @NationalCode NVARCHAR(10),
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Role_user NVARCHAR(30),
    @PhoneNumber NVARCHAR(20),
    @Email NVARCHAR(100),

    @Country NVARCHAR(50),
    @Province NVARCHAR(50),
    @City NVARCHAR(50),
    @Street NVARCHAR(100),
    @Alley NVARCHAR(100),
    @PlaqueNumber NVARCHAR(10),
    @PostalCode NVARCHAR(10),
    @ExtraDescription NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Admins (
            NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
        )
        VALUES (
            @NationalCode, @FirstName, @LastName, @Role_user, @PhoneNumber, @Email
        );

        DECLARE @NewAdminID INT = SCOPE_IDENTITY();

        INSERT INTO Addresses (
            EntityType, EntityID, Country, Province, City, Street, Alley,
            PlaqueNumber, PostalCode, ExtraDescription
        )
        VALUES (
            'Admin', @NationalCode, @Country, @Province, @City, @Street, @Alley,
            @PlaqueNumber, @PostalCode, @ExtraDescription
        );

        INSERT INTO EventLogs (
            EventType,
            TableName,
            RecordID,
            EventDescription
        )
        VALUES (
            'INSERT',
            'Admins',
            @NationalCode,
            N'ادمین با نام ' + @FirstName + N' ' + @LastName + N' ثبت شد.'
        );

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH
END;
GO