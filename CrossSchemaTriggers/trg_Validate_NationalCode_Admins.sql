USE UniversityPortalDB;
GO

DROP TRIGGER IF EXISTS Education.trg_Validate_NationalCode_Admins;

CREATE OR ALTER TRIGGER trg_Validate_NationalCode_Admins
ON Education.Admins
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1 FROM inserted
        WHERE Education.fn_IsValidNationalCode(NationalCode) = 0
    )
    BEGIN
        RAISERROR(N'The national code entered is invalid.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    INSERT INTO Education.Admins (
        NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
    )
    SELECT
        NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
    FROM inserted;
END;
GO
