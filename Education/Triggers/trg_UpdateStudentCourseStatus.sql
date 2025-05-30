USE UniversityPortalDB;
GO

CREATE TRIGGER trg_UpdateStudentCourseStatus
ON StudentCourses
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE sc
    SET Status_course = 
        CASE 
            WHEN i.Grade IS NOT NULL AND i.Grade >= 10 THEN N'Å«” ‘œÂ'
            WHEN i.Grade IS NOT NULL AND i.Grade < 10 THEN N'„—œÊœ'
            ELSE sc.Status_course
        END
    FROM StudentCourses sc
    JOIN inserted i ON sc.StudentCoursID = i.StudentCoursID
END
