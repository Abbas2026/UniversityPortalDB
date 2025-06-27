USE master;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'Admin')
    CREATE ROLE Admin;
GO


CREATE LOGIN adminUser1 WITH PASSWORD = 'StrongPassword@123';

USE UniversityPortalDB;
GO
CREATE USER adminUser1 FOR LOGIN adminUser1;

EXEC sp_addrolemember 'Admin', 'adminUser1';

REVOKE EXECUTE ON usp_RegisterStudentWithAddress FROM PUBLIC;
GO

GRANT EXECUTE ON usp_RegisterStudentWithAddress TO Admin;
GO







USE master;
GO
CREATE LOGIN studentUser WITH PASSWORD = 'StudentPass@123';
GO

USE UniversityPortalDB;
GO

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'Student')
    CREATE ROLE Student;
GO

CREATE USER studentUser FOR LOGIN studentUser;
GO

EXEC sp_addrolemember 'Student', 'studentUser';
GO

REVOKE EXECUTE ON dbo.fn_GetSemesterStatus FROM PUBLIC;
REVOKE EXECUTE ON dbo.fn_GetStudentGPA FROM PUBLIC;
REVOKE EXECUTE ON dbo.fn_RemainingCredits FROM PUBLIC;
GO

GRANT EXECUTE ON dbo.fn_GetSemesterStatus TO Student;
GRANT EXECUTE ON dbo.fn_GetStudentGPA TO Student;
GRANT EXECUTE ON dbo.fn_RemainingCredits TO Student;
GO

REVOKE SELECT, INSERT, UPDATE, DELETE ON dbo.Enrollments FROM Student;
GO
GRANT EXECUTE ON dbo.usp_RegisterStudentInCourse TO Student;
GO