USE UniversityPortalDB
GO
DROP PROCEDURE IF EXISTS Education.usp_RegisterStudentWithAddress;
GO

CREATE PROCEDURE Education.usp_RegisterStudentWithAddress
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

        INSERT INTO Education.Students (
            NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
            PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education
        )
        VALUES (
            @NationalCode, @FirstName, @LastName, @FatherName, @BirthDate, @Gender,
            @PhoneNumber, @Email, @EntryYear, @DepartmentID, @MajorID, @Status_Education
        );


        INSERT INTO Education.Addresses (
            EntityType, EntityID, Country, Province, City, Street, Alley,
            PlaqueNumber, PostalCode, ExtraDescription
        )
        VALUES (
            'Student', @NationalCode, @Country, @Province, @City, @Street, @Alley,
            @PlaqueNumber, @PostalCode, @ExtraDescription
        );

        INSERT INTO Education.EventLogs (
            EventType,
            TableName,
            RecordID,
            EventDescription
        )
        VALUES (
            'INSERT',
            'Students',
            @NationalCode,
            N'دانشجو با نام ' + @FirstName + N' ' + @LastName + N' ثبت شد.'
        );

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;

        THROW;
    END CATCH
END;
