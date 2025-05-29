USE UniversityPortalDB;
GO

DELETE FROM ExamSchedules;
DBCC CHECKIDENT ('ExamSchedules', RESEED, 0);