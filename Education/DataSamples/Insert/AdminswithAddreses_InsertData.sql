USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @NewAdminID INT;
    DECLARE @OutputTable TABLE (AdminID INT);

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0049944029', N'Ali', N'Rezaei', N'Admin', '09121234567', N'ali.rezaei@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'7th', N'12', N'0049944029', N'Office');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0109247183', N'Sara', N'Karimi', N'Admin', '09125551234', N'sara.karimi@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Tehran', N'Shiraz', N'Mollasadra', N'3rd', N'24', N'0109247183', N'Residence');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0123456789', N'Mehdi', N'Azizi', N'Staff', '09129874521', N'mehdi.azizi@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Esfahan', N'Esfahan', N'Chaharbagh', N'6th', N'45', N'0123456789', N'Branch office');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0927377586', N'Mona', N'Ghorbani', N'Admin', '09351237890', N'mona.gh@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Mazandaran', N'Sari', N'Ferdowsi', N'2nd', N'31', N'0927377586', N'Main building');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0054123798', N'Parsa', N'Nasiri', N'Staff', '09112233445', N'parsa.nasiri@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Tabriz', N'Tabriz', N'Takhti', N'1st', N'11', N'0054123798', N'HR department');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0038561425', N'Sina', N'Mehrdad', N'Admin', '09350001122', N'sina.meh@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Yazd', N'Yazd', N'Shohada', N'5th', N'14', N'0038561425', N'Branch');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0084574143', N'Hossein', N'Abbasi', N'Staff', '09129998877', N'hossein.ab@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Kerman', N'Kerman', N'Azadi', N'8th', N'22', N'0084574143', N'Storage');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'1468392751', N'Niloofar', N'Jafari', N'Admin', '09225554433', N'nilo.jf@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Gilan', N'Rasht', N'Saheli', N'4th', N'10', N'1468392751', N'Warehouse');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'1987325461', N'Farid', N'Baqeri', N'Admin', '09134445566', N'farid.ba@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Ardebil', N'Ardebil', N'Taleghani', N'6th', N'29', N'1987325461', N'Floor 2');

    DELETE FROM @OutputTable;

    INSERT INTO Admins (NationalCode, Firstname, Lastname, Role_user, PhoneNumber, Email)
    OUTPUT inserted.AdminID INTO @OutputTable
    VALUES (N'0178546321', N'Maryam', N'Soltani', N'Staff', '09392233444', N'maryam.so@example.com');
    SELECT @NewAdminID = AdminID FROM @OutputTable;
    INSERT INTO Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES (N'Admin', @NewAdminID, N'Iran', N'Fars', N'Shiraz', N'Satarkhan', N'3rd', N'18', N'0178546321', N'Finance');

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
