USE UniversityPortalDB;
GO

select *
from instructors;

select *
from userlink;

select *
from addresses;

select *
from admins;

select *
from Students;

select *
from Majors;

select *
from courses;

select *
from useraccounts;

select *
from departments;

select *
from semesters;

select *
from CourseOfferings;

select *
from ClassSchedules;


select *
from ExamSchedules;

select *
from Enrollments;

select *
from StudentCourses;

select *
from StudentStatusChanges
where StudentID=10003;

SELECT dbo.fn_GetStudentGPA(10003, 1) AS GPA;

SELECT dbo.fn_RemainingCredits(10003) AS RemainingUnits;



SELECT 
    e.StudentID,
    sc.StudentCoursID,
    sc.Grade,
    sc.Status_course,
    co.SemesterID,
    co.CourseID
FROM 
    StudentCourses sc
JOIN 
    Enrollments e ON sc.EnrollmentID = e.EnrollmentID
JOIN 
    CourseOfferings co ON e.OfferingID = co.OfferingID
WHERE 
    co.SemesterID = 1 AND e.StudentID =10003;

