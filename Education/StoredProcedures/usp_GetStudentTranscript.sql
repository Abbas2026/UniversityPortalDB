USE UniversityPortalDB;
GO
DROP PROCEDURE IF EXISTS Education.usp_GetStudentTranscript;
GO

CREATE PROCEDURE usp_GetStudentTranscript
    @StudentID INT,
    @SemesterID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.CourseName,
        c.Credits,
        sc.Grade,
        sc.Status_course
    FROM Education.StudentCourses sc
    JOIN Enrollments e ON sc.EnrollmentID = e.EnrollmentID
    JOIN CourseOfferings co ON e.OfferingID = co.OfferingID
    JOIN Courses c ON co.CourseID = c.CourseID
    WHERE e.StudentID = @StudentID AND co.SemesterID = @SemesterID;

    INSERT INTO Education.EventLogs (
        EventType,
        TableName,
        RecordID,
        EventDescription
    )
    VALUES (
        N'SELECT',
        N'StudentCourses',
        @StudentID,
        N'درخواست کارنامه برای ترم شماره ' + CAST(@SemesterID AS NVARCHAR(10))
    );
END;
GO
