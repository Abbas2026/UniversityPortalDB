USE UniversityPortalDB
go
DROP TABLE IF EXISTS CurriculumPlan;

CREATE TABLE CurriculumPlan (
    CurriculumPlanID INT IDENTITY(1,1) PRIMARY KEY,
    MajorID INT NOT NULL,           
    CourseID INT UNIQUE NOT NULL,         
    SemesterOrder INT NOT NULL      

	CONSTRAINT FK_CurriculumPlan_Major FOREIGN KEY (MajorID) REFERENCES Majors(MajorID),
	CONSTRAINT FK_CurriculumPlan_Courses FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
