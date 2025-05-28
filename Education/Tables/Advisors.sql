USE UniversityPortalDB
go
DROP TABLE IF EXISTS Advisors;

CREATE TABLE Advisors (
    AdvisorID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,			--fk
    InstructorID INT NOT NULL,		--fk
    AssignmentDate DATE NOT NULL DEFAULT GETDATE(), 

	CONSTRAINT FK_Advisors_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_Advisors_Instructors FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);
