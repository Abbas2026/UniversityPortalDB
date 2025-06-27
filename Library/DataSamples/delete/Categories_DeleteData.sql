USE UniversityPortalDB
GO

DELETE FROM Library.Categories;
DBCC CHECKIDENT ('Library.Categories', RESEED, 0);

