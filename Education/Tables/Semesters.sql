USE UniversityPortalDB
go
DROP TABLE IF EXISTS Semesters;

CREATE TABLE Semesters (
    SemesterID INT PRIMARY KEY,
    Termname NVARCHAR(9) NOT NULL,         
    TermNumber INT NOT NULL CHECK (TermNumber IN (1, 2, 3)),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
);
