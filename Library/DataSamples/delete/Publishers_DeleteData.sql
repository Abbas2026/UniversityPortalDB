USE UniversityPortalDB;
GO

DELETE FROM Library.Publishers;
DBCC CHECKIDENT ('Library.Publishers', RESEED, 0);

