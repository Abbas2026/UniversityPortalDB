USE UniversityPortalDB;
GO

DELETE FROM Education.ExamSchedules;
DBCC CHECKIDENT ('Education.ExamSchedules', RESEED, 0);