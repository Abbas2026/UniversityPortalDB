USE UniversityPortalDB
go
DROP TABLE IF EXISTS StudentStatusChanges;

CREATE TABLE StudentStatusChanges (
    ChangeID INT PRIMARY KEY,
    StudentID INT NOT NULL,			--fk
    StatusType NVARCHAR(50) NOT NULL,  
    ChangeDate DATE NOT NULL DEFAULT GETDATE(),
    Description NVARCHAR(255) NULL,     
);
