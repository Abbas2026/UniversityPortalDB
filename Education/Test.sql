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
from Enrollments
where StudentID=10001;


select *
from StudentCourses
where EnrollmentID=594;

select *
from EventLogs;


select *
from StudentStatusChanges
where StudentID=10001;

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



	EXEC usp_RegisterStudentInCourse 
    @StudentID = 10065, 
    @OfferingID = 301;


	EXEC usp_UpdateStudentGrade 
    @StudentCourseID = 596, 
    @Grade = 14.75;


	EXEC usp_GetStudentTranscript 
    @StudentID = 10065, 
    @SemesterID = 6;


	EXEC usp_RegisterStudentWithAddress
    @NationalCode = '1145431933',
    @FirstName = N'علی',
    @LastName = N'رضایی',
    @FatherName = N'حسن',
    @BirthDate = '2001-03-21',
    @Gender = 'M',
    @PhoneNumber = '09123456789',
    @Email = 'ali.rezaei@example.com',
    @EntryYear = 1403,
    @DepartmentID = 1,
    @MajorID = 1,
    @Status_Education = N'Active',
    @Country = N'ایران',
    @Province = N'تهران',
    @City = N'تهران',
    @Street = N'ولیعصر',
    @Alley = N'گلها',
    @PlaqueNumber = '12',
    @PostalCode = '1234567890',
    @ExtraDescription = N'بدون توضیح';


	EXEC usp_RegisterInstructorWithAddress
    @NationalCode = '0098765432',
    @FirstName = N'مریم',
    @LastName = N'کاظمی',
    @FatherName = N'حسین',
    @BirthDate = '1980-06-15',
    @Gender = 'F',
    @PhoneNumber = '09121234567',
    @Email = 'maryam.kazemi@example.com',
    @HireDate = '2010-09-01',
    @DepartmentID = 2,
    @Rank = N'دانشیار',
    @Status = N'فعال',
    @Country = N'ایران',
    @Province = N'اصفهان',
    @City = N'اصفهان',
    @Street = N'عباس آباد',
    @Alley = N'نور',
    @PlaqueNumber = '45',
    @PostalCode = '8765432101',
    @ExtraDescription = N'مدرس درس‌های پایه';


	EXEC usp_RegisterAdminWithAddress
    @NationalCode = '0078912345',
    @FirstName = N'حسین',
    @LastName = N'قاسمی',
    @Role_user = N'مدیر سامانه',
    @PhoneNumber = '09121111111',
    @Email = 'hossein.ghasemi@example.com',
    @Country = N'ایران',
    @Province = N'فارس',
    @City = N'شیراز',
    @Street = N'نمازی',
    @Alley = N'گلسار',
    @PlaqueNumber = '8',
    @PostalCode = '7654321098',
    @ExtraDescription = N'مدیریت کل سامانه دانشگاه';



	EXEC usp_GetSuggestedCourses_PriorityPast @StudentID=10065, @CurrentSemesterOrder=6;

