USE UniversityPortalDB
go
DROP TABLE IF EXISTS StudentStatusChanges;

CREATE TABLE StudentStatusChanges (
    ChangeID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT NOT NULL,			--fk
    StatusType NVARCHAR(50) NOT NULL,  
    ChangeDate DATE NOT NULL DEFAULT GETDATE(),
    Description NVARCHAR(255) NULL,     

	CONSTRAINT FK_StudentStatusChanges_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
