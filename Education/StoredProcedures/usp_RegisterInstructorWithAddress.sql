USE UniversityPortalDB;
GO

CREATE PROCEDURE usp_RegisterInstructorWithAddress
    @NationalCode CHAR(10),
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @FatherName NVARCHAR(50) = NULL,
    @BirthDate DATE,
    @Gender CHAR(1),
    @PhoneNumber VARCHAR(15) = NULL,
    @Email NVARCHAR(100) = NULL,
    @HireDate DATE,
    @DepartmentID INT,
    @Rank NVARCHAR(50) = NULL,
    @Status NVARCHAR(20),

    @Country NVARCHAR(50),
    @Province NVARCHAR(50),
    @City NVARCHAR(50),
    @Street NVARCHAR(100) = NULL,
    @Alley NVARCHAR(100) = NULL,
    @PlaqueNumber NVARCHAR(10) = NULL,
    @PostalCode CHAR(10) = NULL,
    @ExtraDescription NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Instructors (
            NationalCode, FirstName, LastName, FatherName, BirthDate, Gender,
            PhoneNumber, Email, HireDate, DepartmentID, Rank, Status
        )
        VALUES (
            @NationalCode, @FirstName, @LastName, @FatherName, @BirthDate, @Gender,
            @PhoneNumber, @Email, @HireDate, @DepartmentID, @Rank, @Status
        );

        DECLARE @NewInstructorID INT = SCOPE_IDENTITY();

        INSERT INTO Addresses (
            EntityType, EntityID, Country, Province, City, Street, Alley,
            PlaqueNumber, PostalCode, ExtraDescription
        )
        VALUES (
            'Instructor', @NewInstructorID, @Country, @Province, @City, @Street, @Alley,
            @PlaqueNumber, @PostalCode, @ExtraDescription
        );

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
