USE UniversityPortalDB;
GO

CREATE FUNCTION dbo.fn_RemainingCredits
(
    @StudentID INT
)
RETURNS INT
AS
BEGIN
    DECLARE @CompletedCredits INT

    SELECT @CompletedCredits = ISNULL(SUM(c.Credits), 0)
    FROM StudentCourses sc
    JOIN Enrollments e ON sc.EnrollmentID = e.EnrollmentID
    JOIN CourseOfferings co ON e.OfferingID = co.OfferingID
    JOIN Courses c ON co.CourseID = c.CourseID
    WHERE e.StudentID = @StudentID
      AND sc.Status_course = N'Å«” ‘œÂ'

    RETURN 140 - @CompletedCredits
END
