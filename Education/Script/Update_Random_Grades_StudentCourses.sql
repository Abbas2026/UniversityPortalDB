USE UniversityPortalDB;
GO

DECLARE @i INT = 1;

WHILE @i <= 593
BEGIN
    UPDATE StudentCourses
    SET Grade = ROUND(RAND(CHECKSUM(NEWID())) * 20, 2)
    WHERE StudentCoursID = @i;

    SET @i += 1;
END


