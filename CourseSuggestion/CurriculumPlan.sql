USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.CurriculumPlan;

CREATE TABLE Education.CurriculumPlan (
    CurriculumPlanID INT IDENTITY(1,1) PRIMARY KEY,
    MajorID INT NOT NULL,           
    CourseID INT UNIQUE NOT NULL,         
    SemesterOrder INT NOT NULL      

	CONSTRAINT FK_CurriculumPlan_Major FOREIGN KEY (MajorID) REFERENCES Education.Majors(MajorID),
	CONSTRAINT FK_CurriculumPlan_Courses FOREIGN KEY (CourseID) REFERENCES Education.Courses(CourseID)
);
