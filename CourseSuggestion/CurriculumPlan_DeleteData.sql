USE UniversityPortalDB;
GO

DELETE FROM CurriculumPlan;

DBCC CHECKIDENT ('CurriculumPlan', RESEED, 0);