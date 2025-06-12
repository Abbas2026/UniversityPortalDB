USE UniversityPortalDB

DROP TABLE IF EXISTS Library.Books


CREATE TABLE Library.Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    ISBN VARCHAR(13) UNIQUE,
    PublisherID INT FOREIGN KEY REFERENCES Library.Publishers(PublisherID),
    CategoryID INT FOREIGN KEY REFERENCES Library.Categories(CategoryID),
    PublishYear INT
);