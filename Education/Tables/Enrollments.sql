USE UniversityPortalDB
go
DROP TABLE IF EXISTS Enrollments;

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,			--fk
    OfferingID INT NOT NULL,		--fk
    EnrollmentDate DATETIME NOT NULL DEFAULT GETDATE(),
    Grade DECIMAL(4,2) NULL,
    Status_enrollment NVARCHAR(20) NOT NULL DEFAULT N'À» ù‰«„ù‘œÂ', 
);
