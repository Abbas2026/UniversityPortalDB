USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.Advisors;

CREATE TABLE Education.Advisors (
    AdvisorID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,			--fk
    InstructorID INT NOT NULL,		--fk
    AssignmentDate DATE NOT NULL DEFAULT GETDATE(), 

	CONSTRAINT FK_Advisors_Students FOREIGN KEY (StudentID) REFERENCES Education.Students(StudentID),
	CONSTRAINT FK_Advisors_Instructors FOREIGN KEY (InstructorID) REFERENCES Education.Instructors(InstructorID)
);
