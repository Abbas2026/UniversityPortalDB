USE UniversityPortalDB
GO
DROP PROCEDURE IF EXISTS usp_RegisterStudentWithAddress;
GO

CREATE PROCEDURE usp_RegisterStudentWithAddress
    @NationalCode NVARCHAR(10),
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @FatherName NVARCHAR(50),
    @BirthDate DATE,
    @Gender CHAR(1),
    @PhoneNumber NVARCHAR(20),
    @Email NVARCHAR(100),
    @EntryYear INT,
    @DepartmentID INT,
    @MajorID INT,
    @Status_Education NVARCHAR(20),

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

        INSERT INTO Students (
            NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
            PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education
        )
        VALUES (
            @NationalCode, @FirstName, @LastName, @FatherName, @BirthDate, @Gender,
            @PhoneNumber, @Email, @EntryYear, @DepartmentID, @MajorID, @Status_Education
        );

        DECLARE @NewStudentID INT = SCOPE_IDENTITY();

        INSERT INTO Addresses (
            EntityType, EntityID, Country, Province, City, Street, Alley,
            PlaqueNumber, PostalCode, ExtraDescription
        )
        VALUES (
            'Student', @NationalCode, @Country, @Province, @City, @Street, @Alley,
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
            'Students',
            @NationalCode,
            N'œ«‰‘ÃÊ »« ‰«„ ' + @FirstName + N' ' + @LastName + N' À»  ‘œ.'
        );

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;

        THROW;
    END CATCH
END;
