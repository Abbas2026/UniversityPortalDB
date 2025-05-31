USE UniversityPortalDB;
GO

DELETE FROM StudentStatusChanges;
DBCC CHECKIDENT ('StudentStatusChanges', RESEED, 0);