USE UniversityPortalDB;
GO

DROP TABLE IF EXISTS StudentCourses;

CREATE TABLE StudentCourses (
    StudentCoursID INT IDENTITY(1,1) PRIMARY KEY,
    EnrollmentID INT NOT NULL,		--fk
    Status_course NVARCHAR(15) NOT NULL DEFAULT N'À» ‰«„ ‘œÂ',	
	Grade DECIMAL(4,2),

	CONSTRAINT FK_StudentCourses_Enrollments FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID)
);