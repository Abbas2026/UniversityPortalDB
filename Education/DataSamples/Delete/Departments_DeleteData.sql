USE UniversityPortalDB
go

DELETE FROM Departments
WHERE DepartmentName IN (
    N'Computer Science',
    N'Electrical Engineering',
    N'Mechanical Engineering',
    N'Civil Engineering',
    N'Chemical Engineering',
    N'Mathematics',
    N'Physics',
    N'Chemistry',
    N'Biology',
    N'Persian Language and Literature',
    N'Law',
    N'Political Science',
    N'Management',
    N'Economics',
    N'Psychology'
);
