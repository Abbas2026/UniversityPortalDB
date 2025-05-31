USE UniversityPortalDB;
GO
DROP TRIGGER IF EXISTS trg_CheckGPA_OnGradeUpdate;
GO

CREATE TRIGGER trg_CheckGPA_OnGradeUpdate
ON StudentCourses
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH Affected AS (
        SELECT DISTINCT 
            e.StudentID,
            co.SemesterID
        FROM inserted i
        JOIN Enrollments e ON i.EnrollmentID = e.EnrollmentID
        JOIN CourseOfferings co ON e.OfferingID = co.OfferingID
        WHERE i.Grade IS NOT NULL
    )
    UPDATE ssc
    SET 
        GPA = GPA_Calc.GPA,
        StatusType = dbo.fn_GetSemesterStatus(GPA_Calc.GPA)
    FROM StudentStatusChanges ssc
    JOIN Affected a ON ssc.StudentID = a.StudentID AND ssc.SemesterID = a.SemesterID
    CROSS APPLY (
        SELECT dbo.fn_GetStudentGPA(a.StudentID, a.SemesterID) AS GPA
    ) GPA_Calc;
END;
