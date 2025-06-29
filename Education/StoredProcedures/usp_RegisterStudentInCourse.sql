USE UniversityPortalDB;
GO

DROP PROCEDURE IF EXISTS Education.usp_RegisterStudentInCourse;
GO

CREATE PROCEDURE usp_RegisterStudentInCourse
    @StudentID INT,
    @OfferingID INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Education.Enrollments (StudentID, OfferingID)
        VALUES (@StudentID, @OfferingID);

        DECLARE @NewEnrollmentID INT = SCOPE_IDENTITY();

        INSERT INTO Education.EventLogs (
            EventType,
            TableName,
            RecordID,
            EventDescription
        )
        VALUES (
            N'INSERT',
            N'Enrollments',
            @NewEnrollmentID,
            N'ثبت‌نام دانشجو در یک درس (OfferingID = ' + CAST(@OfferingID AS NVARCHAR(10)) + N')'
        );

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH
END;
GO
