USE UniversityPortalDB;
GO

DELETE FROM Library.Fines;
DBCC CHECKIDENT ('Library.Fines', RESEED, 0);

