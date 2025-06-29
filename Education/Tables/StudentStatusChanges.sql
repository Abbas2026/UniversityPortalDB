USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.StudentStatusChanges;

CREATE TABLE Education.StudentStatusChanges (
    ChangeID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,			--fk
	SemesterID INT NOT NULL,		--fk
	units INT NOT NULL,
    StatusType NVARCHAR(50) NOT NULL,  
	GPA DECIMAL(4,2),
    ChangeDate DATE NOT NULL DEFAULT GETDATE(),
    Description NVARCHAR(255) NULL,     

	CONSTRAINT FK_StudentStatusChanges_Students FOREIGN KEY (StudentID) REFERENCES Education.Students(StudentID),
	CONSTRAINT FK_StudentStatusChanges_Semesters FOREIGN KEY (SemesterID) REFERENCES Education.Semesters(SemesterID)
);
