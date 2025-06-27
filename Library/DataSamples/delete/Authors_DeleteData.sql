USE UniversityPortalDB
GO

DELETE FROM Library.Authors;
DBCC CHECKIDENT ('Library.Authors', RESEED, 0);

