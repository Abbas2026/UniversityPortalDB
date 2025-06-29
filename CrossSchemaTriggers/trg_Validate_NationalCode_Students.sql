USE UniversityPortalDB;
GO

DROP TRIGGER IF EXISTS Education.trg_Validate_NationalCode_Students;
GO
CREATE OR ALTER TRIGGER trg_Validate_NationalCode_Students
ON Education.Students
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

    INSERT INTO Education.Students (
        NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
        PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education
    )
    SELECT
        NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
        PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education
    FROM inserted;
END;
GO

