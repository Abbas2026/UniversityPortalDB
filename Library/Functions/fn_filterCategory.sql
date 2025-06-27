CREATE FUNCTION filterCategory
(
    @category NVARCHAR(100)
)
RETURNS TABLE
AS
RETURN
(
    SELECT b.BookID, b.Title, b.PublisherID, b.PublishYear
    FROM Library.Books b
    JOIN Library.Categories c ON c.CategoryID = b.CategoryID
    WHERE c.Name = @category
)
