USE UniversityPortalDB;
GO

DELETE FROM Library.BookCopies;
DBCC CHECKIDENT ('Library.BookCopies', RESEED, 0);

