CREATE OR ALTER TRIGGER trg_Validate_NationalCode_Admins
ON Admins
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1 FROM inserted
        WHERE dbo.fn_IsValidNationalCode(NationalCode) = 0
    )
    BEGIN
        RAISERROR(N'The national code entered is invalid.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    INSERT INTO Admins (
        NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
    )
    SELECT
        NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
    FROM inserted;
END;
GO