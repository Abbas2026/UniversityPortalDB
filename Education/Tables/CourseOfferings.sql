USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.CourseOfferings;

CREATE TABLE Education.CourseOfferings (
    OfferingID INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT NOT NULL,		--fk
    SemesterID INT NOT NULL,    --fk
    InstructorID INT NULL,		--fk
    Capacity INT NULL,

	CONSTRAINT FK_CourseOfferings_Courses FOREIGN KEY (CourseID) REFERENCES Education.Courses(CourseID),
    CONSTRAINT FK_CourseOfferings_Instructors FOREIGN KEY (InstructorID) REFERENCES Education.Instructors(InstructorID),
    CONSTRAINT FK_CourseOfferings_Semesters FOREIGN KEY (SemesterID) REFERENCES Education.Semesters(SemesterID)
);

