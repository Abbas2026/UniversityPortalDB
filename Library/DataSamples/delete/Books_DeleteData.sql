USE UniversityPortalDB
GO

DELETE FROM Library.Books;
DBCC CHECKIDENT ('Library.Books', RESEED, 0);

