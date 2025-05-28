USE UniversityPortalDB
go

DELETE FROM Departments;

DBCC CHECKIDENT ('Departments', RESEED, 0);
