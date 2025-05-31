USE UniversityPortalDB;
GO

DROP PROCEDURE IF EXISTS usp_UpdateStudentGrade;
GO

CREATE PROCEDURE usp_UpdateStudentGrade
    @StudentCourseID INT,
    @Grade DECIMAL(4,2)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE StudentCourses
        SET Grade = @Grade,
            Status_course = CASE WHEN @Grade >= 10 THEN N'پاس شده' ELSE N'مردود' END
        WHERE StudentCoursID = @StudentCourseID;

        INSERT INTO EventLogs (
            EventType,
            TableName,
            RecordID,
            EventDescription
        )
        VALUES (
            N'UPDATE',
            N'StudentCourses',
            @StudentCourseID,
            N'به‌روزرسانی نمره به ' + CAST(@Grade AS NVARCHAR(10)) + N' و تغییر وضعیت درس'
        );

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        THROW;
    END CATCH
END;
GO
