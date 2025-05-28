USE UniversityPortalDB
go
DROP TABLE IF EXISTS CourseOfferings;

CREATE TABLE CourseOfferings (
    OfferingID INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT NOT NULL,		--fk
    SemesterID INT NOT NULL,    --fk
    InstructorID INT NULL,		--fk
    Capacity INT NULL,

	CONSTRAINT FK_CourseOfferings_Courses FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    CONSTRAINT FK_CourseOfferings_Instructors FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID),
    CONSTRAINT FK_CourseOfferings_Semesters FOREIGN KEY (SemesterID) REFERENCES Semesters(SemesterID)
);

