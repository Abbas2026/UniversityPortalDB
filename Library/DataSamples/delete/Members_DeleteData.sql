USE UniversityPortalDB;
GO

DELETE FROM Library.Members;
DBCC CHECKIDENT ('Library.Members', RESEED, 0);