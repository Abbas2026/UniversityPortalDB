USE UniversityPortalDB;
GO

DELETE FROM Education.CurriculumPlan;

DBCC CHECKIDENT ('Education.CurriculumPlan', RESEED, 0);