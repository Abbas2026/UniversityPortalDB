USE UniversityPortalDB;
GO
CREATE OR ALTER TRIGGER trg_Validate_NationalCode_Admins
ON Admins
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1 FROM inserted
        WHERE dbo.fn_IsValidNationalCode(NationalCode) = 0
    )
    BEGIN
        RAISERROR(N'The national code entered is invalid.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    INSERT INTO Admins (
        NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
    )
    SELECT
        NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email
    FROM inserted;
END;
GO

SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('0044478749'),
    ('0074308639'),
    ('0087996417'),
    ('0115683948'),
    ('0123456789'),--
    ('0178546321'),--
    ('0189632587'),
    ('0198765434'),
    ('0012345679'),--
    ('0098765436')
) AS T(NationalCode);

SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('1589632489'),
    ('1987325461'), --
    ('2365471895'),
    ('3659841273'),
    ('1468392751'), --
    ('3958741623'),
    ('2841597362'),
    ('1256934871'),
    ('3948572163'),
    ('2198743651')
) AS T(NationalCode);


SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('0040448717'),
    ('0079357139'),
    ('0084574143'), --
    ('0113769413'),
    ('0123456789'), --
    ('0178123457'),
    ('0192837465'),
    ('0283746512'),
    ('0356712349'),
    ('0491827364')
) AS T(NationalCode);


SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('0010285939'),
    ('0024312057'),
    ('0038561425'), --
    ('0054123798'), --
    ('0927377586'),--
    ('0927377585'),
    ('0081927364'),
    ('0093857216'),
    ('0102948573'),
    ('0113759842')
) AS T(NationalCode);


SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('0123456789'), --
    ('0135792468'),
    ('0146823579'),
    ('0157938642'),
    ('0168049753'),
    ('0179153864'),
    ('0180264975'),
    ('0191375086'),
    ('0202486197'),
    ('0213597208')
) AS T(NationalCode);


SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('0010345678'),
    ('0021469785'),
    ('0032578496'),
    ('0043681597'),
    ('0054792638'),
    ('0065803749'),
    ('0076914850'),
    ('0087025961'),
    ('0098136072'),
    ('0109247183') --
) AS T(NationalCode);


SELECT NationalCode, dbo.fn_IsValidNationalCode(NationalCode) AS IsValid
FROM (VALUES 
    ('0010364659'),
    ('0077203789'),
    ('0045184785'),
    ('0085818191'),
    ('0016838183'),
    ('0116502783'),
    ('0173402987'),
    ('0049944029'),--
    ('0029218437'),
    ('0080151746')
) AS T(NationalCode);
