USE UniversityPortalDB
GO
DELETE FROM Education.Majors;
DBCC CHECKIDENT ('Education.Majors', RESEED, 0);
