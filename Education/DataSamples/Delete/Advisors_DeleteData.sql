USE UniversityPortalDB;
GO

DELETE FROM Education.Advisors;
DBCC CHECKIDENT ('Education.Advisors', RESEED, 0);

