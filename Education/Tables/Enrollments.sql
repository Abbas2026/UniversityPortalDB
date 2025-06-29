USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Enrollments;

CREATE TABLE Education.Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,			--fk
    OfferingID INT NOT NULL,		--fk
    EnrollmentDate DATETIME NOT NULL DEFAULT GETDATE(),
    Status_enrollment NVARCHAR(20) NOT NULL DEFAULT N'��ʝ������', 

	CONSTRAINT FK_Enrollments_Students FOREIGN KEY (StudentID) REFERENCES Education.Students(StudentID),
	CONSTRAINT FK_Enrollments_CourseOfferings FOREIGN KEY (OfferingID) REFERENCES Education.CourseOfferings(OfferingID)
);
