USE UniversityPortalDB
go

DELETE FROM Education.Departments;

DBCC CHECKIDENT ('Education.Departments', RESEED, 0);
