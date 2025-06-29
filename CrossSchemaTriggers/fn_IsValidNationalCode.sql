USE UniversityPortalDB;
GO
DROP FUNCTION IF EXISTS Education.fn_IsValidNationalCode;

CREATE OR ALTER FUNCTION Education.fn_IsValidNationalCode(@NationalCode CHAR(10))
RETURNS BIT
AS
BEGIN
    DECLARE @IsValid BIT = 0;

    IF LEN(@NationalCode) = 10
    BEGIN
        DECLARE @Sum INT =
            CAST(SUBSTRING(@NationalCode,1,1) AS INT) * 10 +
            CAST(SUBSTRING(@NationalCode,2,1) AS INT) * 9 +
            CAST(SUBSTRING(@NationalCode,3,1) AS INT) * 8 +
            CAST(SUBSTRING(@NationalCode,4,1) AS INT) * 7 +
            CAST(SUBSTRING(@NationalCode,5,1) AS INT) * 6 +
            CAST(SUBSTRING(@NationalCode,6,1) AS INT) * 5 +
            CAST(SUBSTRING(@NationalCode,7,1) AS INT) * 4 +
            CAST(SUBSTRING(@NationalCode,8,1) AS INT) * 3 +
            CAST(SUBSTRING(@NationalCode,9,1) AS INT) * 2;

        DECLARE @Remainder INT = @Sum % 11;
        DECLARE @CheckDigit INT = CAST(SUBSTRING(@NationalCode,10,1) AS INT);

        IF @CheckDigit BETWEEN 0 AND 9
        BEGIN
            IF (@Remainder < 2 AND @CheckDigit = @Remainder) OR
               (@Remainder >= 2 AND @CheckDigit = (11 - @Remainder))
            BEGIN
                SET @IsValid = 1;
            END
        END
    END

    RETURN @IsValid;
END;
GO
