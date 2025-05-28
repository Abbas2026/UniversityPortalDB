USE UniversityPortalDB;
GO

CREATE OR ALTER TRIGGER trg_Validate_NationalCode_Instructors
ON Instructors
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

    INSERT INTO Instructors (
        NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
        PhoneNumber, Email, HireDate, DepartmentID, Rank, Status
    )
    SELECT
        NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
        PhoneNumber, Email, HireDate, DepartmentID, Rank, Status
    FROM inserted;
END;
GO
