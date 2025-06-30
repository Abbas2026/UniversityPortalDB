USE UniversityPortalDB
go
DROP TABLE IF EXISTS Education.UserAccounts;

CREATE TABLE Education.UserAccounts (
    UserID NVARCHAR(10) PRIMARY KEY,     --fk
    Username NVARCHAR(50) NOT NULL UNIQUE,
    UserPassword NVARCHAR(255) NOT NULL, 
    Role_user NVARCHAR(30) NOT NULL,         
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedAt DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT FK_UserAccounts_Userlink FOREIGN KEY (UserID) REFERENCES Education.Userlink(EntityID)
);
ALTER TABLE Education.UserAccounts
ADD Salt NVARCHAR(256);