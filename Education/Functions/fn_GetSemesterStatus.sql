USE UniversityPortalDB;
GO

CREATE FUNCTION dbo.fn_GetSemesterStatus
(
    @GPA DECIMAL(4,2)
)
RETURNS NVARCHAR(20)
AS
BEGIN
    RETURN (
        CASE 
            WHEN @GPA < 12 THEN N'مشروط'
            ELSE N'عادی'
        END
    )
END
