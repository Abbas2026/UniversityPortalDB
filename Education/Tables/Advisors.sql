USE UniversityPortalDB
go
DROP TABLE IF EXISTS Advisors;

CREATE TABLE Advisors (
    AdvisorID INT PRIMARY KEY,
    StudentID INT NOT NULL,			--fk
    InstructorID INT NOT NULL,		--fk
    AssignmentDate DATE NOT NULL DEFAULT GETDATE(), 
);
