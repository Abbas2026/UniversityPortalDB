USE UniversityPortalDB;
GO
DROP TRIGGER IF EXISTS Education.trg_UpdateUnits_OnEnrollment;
GO

CREATE TRIGGER trg_UpdateUnits_OnEnrollment
ON Education.Enrollments
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EnrollmentInfo TABLE (
        StudentID INT,
        SemesterID INT,
        TotalCredits INT
    );

    INSERT INTO @EnrollmentInfo (StudentID, SemesterID, TotalCredits)
    SELECT
        i.StudentID,
        co.SemesterID,
        SUM(c.Credits)
    FROM inserted i
    JOIN CourseOfferings co ON i.OfferingID = co.OfferingID
    JOIN Courses c ON co.CourseID = c.CourseID
    GROUP BY i.StudentID, co.SemesterID;

    INSERT INTO StudentStatusChanges (StudentID, SemesterID, units, StatusType)
    SELECT 
        ei.StudentID,
        ei.SemesterID,
        ei.TotalCredits,
        N'عادی'
    FROM @EnrollmentInfo ei
    WHERE NOT EXISTS (
        SELECT 1 FROM StudentStatusChanges ssc
        WHERE ssc.StudentID = ei.StudentID AND ssc.SemesterID = ei.SemesterID
    );

    UPDATE ssc
    SET ssc.units = ssc.units + ei.TotalCredits
    FROM Education.StudentStatusChanges ssc
    JOIN @EnrollmentInfo ei ON ssc.StudentID = ei.StudentID AND ssc.SemesterID = ei.SemesterID;
END;
