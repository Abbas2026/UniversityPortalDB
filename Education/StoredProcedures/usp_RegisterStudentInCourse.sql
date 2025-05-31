USE UniversityPortalDB;
GO

CREATE PROCEDURE sp_RegisterStudentInCourse
    @StudentID INT,
    @OfferingID INT
AS
BEGIN
    INSERT INTO Enrollments (StudentID, OfferingID)
    VALUES (@StudentID, @OfferingID);
END;
