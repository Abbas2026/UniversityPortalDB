USE UniversityPortalDB;
GO

DROP TRIGGER IF EXISTS Education.trg_UpdateStudentCourseStatus;
GO
CREATE TRIGGER trg_UpdateStudentCourseStatus
ON Education.StudentCourses
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
    FROM Education.StudentCourses sc
    JOIN inserted i ON sc.StudentCoursID = i.StudentCoursID
END
