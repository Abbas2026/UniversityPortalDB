USE UniversityPortalDB;
GO

CREATE PROCEDURE sp_UpdateStudentGrade
    @StudentCourseID INT,
    @Grade DECIMAL(4,2)
AS
BEGIN
    UPDATE StudentCourses
    SET Grade = @Grade,
        Status_course = CASE WHEN @Grade >= 10 THEN N'ÇÓ ÔÏå' ELSE N'ãÑÏæÏ' END
    WHERE StudentCoursID = @StudentCourseID;
END;
