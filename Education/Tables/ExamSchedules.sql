USE UniversityPortalDB;
GO

DROP TABLE IF EXISTS Education.ExamSchedules;

CREATE TABLE Education.ExamSchedules (
    ExamID INT IDENTITY(1,1) PRIMARY KEY,
    OfferingID INT NOT NULL,          --fk        
    ExamDate DATE NOT NULL,                    
    Exam_StartTime TIME NOT NULL, 
	Exam_EndTime TIME NOT NULL, 
	ExamLocation NVARCHAR(100) NOT NULL,       

	CONSTRAINT FK_ExamSchedules_CourseOfferings FOREIGN KEY (OfferingID) REFERENCES Education.CourseOfferings(OfferingID),
);
