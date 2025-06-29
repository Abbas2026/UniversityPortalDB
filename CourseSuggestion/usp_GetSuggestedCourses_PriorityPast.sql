USE UniversityPortalDB
go
DROP PROCEDURE IF EXISTS usp_GetSuggestedCourses_PriorityPast;
go

CREATE PROCEDURE usp_GetSuggestedCourses_PriorityPast
    @StudentID INT,
    @CurrentSemesterOrder INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @MajorID INT;

    SELECT @MajorID = MajorID FROM Education.Students WHERE StudentID = @StudentID;

    ;WITH PassedCourses AS (
        SELECT DISTINCT c.CourseID
        FROM Education.StudentCourses sc
        JOIN Education.Enrollments e ON sc.EnrollmentID = e.EnrollmentID
        JOIN Education.CourseOfferings co ON e.OfferingID = co.OfferingID
        JOIN Education.Courses c ON co.CourseID = c.CourseID
        WHERE e.StudentID = @StudentID AND sc.Status_course = N'Å«” ‘œÂ'
    )

    SELECT cp.CourseID, c.CourseName, c.Credits, cp.SemesterOrder
    FROM Education.CurriculumPlan cp
    JOIN Education.Courses c ON cp.CourseID = c.CourseID
    WHERE cp.MajorID = @MajorID
      AND cp.SemesterOrder <= @CurrentSemesterOrder
      AND cp.CourseID NOT IN (SELECT CourseID FROM PassedCourses)
    ORDER BY
        CASE WHEN cp.SemesterOrder < @CurrentSemesterOrder THEN 0 ELSE 1 END,  
        cp.SemesterOrder,
        cp.CourseID;
END;


