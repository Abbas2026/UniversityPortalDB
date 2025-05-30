USE UniversityPortalDB;
GO

CREATE TRIGGER trg_Insert_StudentCourses
ON Enrollments
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO StudentCourses (EnrollmentID)
    SELECT EnrollmentID
    FROM inserted
    WHERE Status_enrollment = N'À» ù‰«„ù‘œÂ';
END;
