USE UniversityPortalDB;
GO
DROP FUNCTION IF EXISTS fn_GetStudentGPA;

CREATE FUNCTION dbo.fn_GetStudentGPA
(
    @StudentID INT,
    @SemesterID INT
)
RETURNS DECIMAL(4,2)
AS
BEGIN
    DECLARE @GPA DECIMAL(4,2)

    SELECT @GPA = 
        CASE 
            WHEN SUM(c.Credits) = 0 THEN NULL
            ELSE CAST(SUM(sc.Grade * c.Credits) AS FLOAT) / SUM(c.Credits)
        END
    FROM StudentCourses sc
    JOIN Enrollments e ON sc.EnrollmentID = e.EnrollmentID
    JOIN CourseOfferings co ON e.OfferingID = co.OfferingID
    JOIN Courses c ON co.CourseID = c.CourseID
    WHERE e.StudentID = @StudentID
      AND co.SemesterID = @SemesterID
      AND sc.Grade IS NOT NULL

    RETURN @GPA
END

