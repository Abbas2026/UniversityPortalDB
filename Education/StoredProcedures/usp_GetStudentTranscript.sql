USE UniversityPortalDB;
GO

CREATE PROCEDURE usp_GetStudentTranscript
    @StudentID INT,
    @SemesterID INT
AS
BEGIN
    SELECT 
        c.CourseName,
        c.Credits,
        sc.Grade,
        sc.Status_course
    FROM StudentCourses sc
    JOIN Enrollments e ON sc.EnrollmentID = e.EnrollmentID
    JOIN CourseOfferings co ON e.OfferingID = co.OfferingID
    JOIN Courses c ON co.CourseID = c.CourseID
    WHERE e.StudentID = @StudentID AND co.SemesterID = @SemesterID;
END;
