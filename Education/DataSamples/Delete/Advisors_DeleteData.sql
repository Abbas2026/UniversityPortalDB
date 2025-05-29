USE UniversityPortalDB;
GO

DELETE FROM UserAccounts;
DBCC CHECKIDENT ('UserAccounts', RESEED, 0);

