USE UniversityPortalDB
GO
DELETE FROM Majors;
DBCC CHECKIDENT ('Majors', RESEED, 0);
