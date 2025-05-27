USE UniversityPortalDB
go
DROP TABLE IF EXISTS CourseOfferings;

CREATE TABLE CourseOfferings (
    OfferingID INT PRIMARY KEY,
    CourseID INT NOT NULL,		--fk
    SemesterID INT NOT NULL,    --fk
    InstructorID INT NULL,		--fk
    Capacity INT NULL,
);
