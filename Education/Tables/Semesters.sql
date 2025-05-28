USE UniversityPortalDB
go
DROP TABLE IF EXISTS Semesters;

CREATE TABLE Semesters (
    SemesterID INT IDENTITY(1,1) PRIMARY KEY,
    Termname NVARCHAR(9) UNIQUE NOT NULL,         
    TermNumber INT NOT NULL CHECK (TermNumber IN (1, 2, 3)),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL
);
