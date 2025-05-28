USE UniversityPortalDB
go
DROP TABLE IF EXISTS UserAccounts;

CREATE TABLE UserAccounts (
    UserID INT PRIMARY KEY,     --fk
    Username NVARCHAR(50) NOT NULL UNIQUE,
    UserPassword NVARCHAR(255) NOT NULL, 
    Role_user NVARCHAR(30) NOT NULL,         
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT FK_UserAccounts_Userlink FOREIGN KEY (UserID) REFERENCES Userlink(EntityID)
);
