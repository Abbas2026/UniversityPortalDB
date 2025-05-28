USE UniversityPortalDB
go
DROP TABLE IF EXISTS ClassSchedules;

CREATE TABLE ClassSchedules (
    ScheduleID INT PRIMARY KEY IDENTITY(1,1),
    OfferingID INT NOT NULL,			--fk
    Day_Of_Week NVARCHAR(10) NOT NULL,  
    StartTime TIME NOT NULL,      
    EndTime TIME NOT NULL,       
    Location_class NVARCHAR(100) NOT NULL, 

	CONSTRAINT FK_ClassSchedules_CourseOfferings FOREIGN KEY (OfferingID) REFERENCES CourseOfferings(OfferingID)
);
