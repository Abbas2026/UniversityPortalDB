USE UniversityPortalDB;
GO

DROP TABLE IF EXISTS Education.StudentCourses;

CREATE TABLE Education.StudentCourses (
    StudentCoursID INT IDENTITY(1,1) PRIMARY KEY,
    EnrollmentID INT NOT NULL,		--fk
    Status_course NVARCHAR(15) NOT NULL DEFAULT N'À» ‰«„ ‘œÂ',	
	Grade DECIMAL(4,2),

	CONSTRAINT FK_StudentCourses_Enrollments FOREIGN KEY (EnrollmentID) REFERENCES Education.Enrollments(EnrollmentID)
);