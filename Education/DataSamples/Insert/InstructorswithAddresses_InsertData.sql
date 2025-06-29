USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;

 DECLARE @OutputTable TABLE (InstructorID INT);

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES 
(N'7905469611', N'Ali', N'Rezaei', N'Mohammad', '1970-01-10', 'M', '09120000001', N'ali.rezaei@cs.university.edu', '2000-02-15', 1, N'Professor', N'Active'),
(N'4931584551', N'Sara', N'Ahmadi', N'Hossein', '1980-03-20', 'F', '09120000002', N'sara.ahmadi@cs.university.edu', '2005-06-30', 1, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES 
(N'Instructor', N'7905469611', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'10th', N'1', N'1111111111', N'Office'),
(N'Instructor', N'4931584551', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'11th', N'2', N'1111111112', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'2017340741', N'Zahra', N'Ahmadi', N'Reza', '1975-05-14', 'F', '09120000003', N'zahra.ahmadi@ee.university.edu', '2002-07-20', 2, N'Associate Professor', N'Active'),
(N'7016716813', N'Mohammad', N'Sharifi', N'Ali', '1982-08-01', 'M', '09120000004', N'mohammad.sharifi@ee.university.edu', '2008-01-15', 2, N'Lecturer', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'2017340741', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'3rd', N'5', N'2222222222', N'Office'),
(N'Instructor', N'7016716813', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'4th', N'6', N'2222222223', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'1473498661', N'Navid', N'Jafari', N'Mehdi', '1978-11-11', 'M', '09120000005', N'navid.jafari@me.university.edu', '2003-03-10', 3, N'Professor', N'Active'),
(N'4156798992', N'Fatemeh', N'Kazemi', N'Hassan', '1985-04-07', 'F', '09120000006', N'fatemeh.kazemi@me.university.edu', '2010-10-01', 3, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'1473498661', N'Iran', N'Mazandaran', N'Sari', N'Azadi', N'1st', N'10', N'3333333333', N'Office'),
(N'Instructor', N'4156798992', N'Iran', N'Mazandaran', N'Sari', N'Azadi', N'2nd', N'11', N'3333333334', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'1777045908', N'Hamid', N'Karimi', N'Majid', '1972-07-20', 'M', '09120000007', N'hamid.karimi@ce.university.edu', '2001-11-18', 4, N'Lecturer', N'Active'),
(N'6454918939', N'Neda', N'Hosseini', N'Mehdi', '1982-02-25', 'F', '09120000008', N'neda.hosseini@ce.university.edu', '2012-12-12', 4, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'1777045908', N'Iran', N'Esfahan', N'Esfahan', N'Shahid Beheshti', N'6th', N'15', N'4444444444', N'Office'),
(N'Instructor', N'6454918939', N'Iran', N'Esfahan', N'Esfahan', N'Shahid Beheshti', N'7th', N'16', N'4444444445', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'2192524056', N'Kaveh', N'Jafari', N'Ali', '1979-09-30', 'M', '09120000009', N'kaveh.jafari@che.university.edu', '2005-06-22', 5, N'Professor', N'Active'),
(N'7164951632', N'Mahsa', N'Ranjbar', N'Ali', '1989-12-05', 'F', '09120000010', N'mahsa.ranjbar@che.university.edu', '2017-05-20', 5, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'2192524056', N'Iran', N'Fars', N'Shiraz', N'Hafez', N'1st', N'5', N'5555555555', N'Office'),
(N'Instructor', N'7164951632', N'Iran', N'Fars', N'Shiraz', N'Hafez', N'2nd', N'6', N'5555555556', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'0490808778', N'Sara', N'Sadat', N'Mehdi', '1976-11-11', 'F', '09120000011', N'sara.sadat@math.university.edu', '2003-07-01', 6, N'Professor', N'Active'),
(N'6132212140', N'Mehdi', N'Bahrami', N'Reza', '1983-06-25', 'M', '09120000012', N'mehdi.bahrami@math.university.edu', '2009-09-15', 6, N'Lecturer', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'0490808778', N'Iran', N'Tehran', N'Tehran', N'Vahdat', N'5th', N'8', N'6666666666', N'Office'),
(N'Instructor', N'6132212140', N'Iran', N'Tehran', N'Tehran', N'Vahdat', N'6th', N'9', N'6666666667', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'5975019389', N'Masoud', N'Mirzaei', N'Hassan', '1971-04-14', 'M', '09120000013', N'masoud.mirzaei@phys.university.edu', '2000-05-20', 7, N'Professor', N'Active'),
(N'8009801291', N'Elham', N'Taghavi', N'Mohammad', '1986-09-09', 'F', '09120000014', N'elham.taghavi@phys.university.edu', '2012-11-05', 7, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'5975019389', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'4th', N'12', N'7777777777', N'Office'),
(N'Instructor', N'8009801291', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'5th', N'13', N'7777777778', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'0715464329', N'Parisa', N'Rasouli', N'Hossein', '1979-08-22', 'F', '09120000015', N'parisa.rasouli@bio.university.edu', '2006-03-10', 8, N'Associate Professor', N'Active'),
(N'3315502412', N'Siamak', N'Farahani', N'Ahmad', '1984-12-01', 'M', '09120000016', N'siamak.farahani@bio.university.edu', '2011-07-22', 8, N'Lecturer', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'0715464329', N'Iran', N'Golestan', N'Gorgan', N'Imam Khomeini', N'8th', N'3', N'8888888888', N'Office'),
(N'Instructor', N'3315502412', N'Iran', N'Golestan', N'Gorgan', N'Imam Khomeini', N'9th', N'4', N'8888888889', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'1270741764', N'Maryam', N'Salehi', N'Ahmad', '1980-03-17', 'F', '09120000017', N'maryam.salehi@chem.university.edu', '2007-05-25', 9, N'Assistant Professor', N'Active'),
(N'4865473769', N'Saeed', N'Mohammadi', N'Hossein', '1977-10-09', 'M', '09120000018', N'saeed.mohammadi@chem.university.edu', '2004-09-30', 9, N'Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'1270741764', N'Iran', N'Tehran', N'Tehran', N'Jomhouri', N'2nd', N'20', N'9999999999', N'Office'),
(N'Instructor', N'4865473769', N'Iran', N'Tehran', N'Tehran', N'Jomhouri', N'3rd', N'21', N'9999999998', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'4421145564', N'Ahmad', N'Navidi', N'Saeed', '1974-06-30', 'M', '09120000019', N'ahmad.navidi@history.university.edu', '2001-08-05', 10, N'Professor', N'Active'),
(N'6190830617', N'Leila', N'Khosravi', N'Ali', '1987-01-22', 'F', '09120000020', N'leila.khosravi@history.university.edu', '2014-02-18', 10, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'4421145564', N'Iran', N'Kerman', N'Kerman', N'Sadjad', N'5th', N'7', N'1010101010', N'Office'),
(N'Instructor', N'6190830617', N'Iran', N'Kerman', N'Kerman', N'Sadjad', N'6th', N'8', N'1010101011', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'2897167092', N'Bahareh', N'Motamedi', N'Mohammad', '1978-12-12', 'F', '09120000021', N'bahareh.motamedi@psych.university.edu', '2005-10-10', 11, N'Associate Professor', N'Active'),
(N'8030280157', N'Reza', N'Karimi', N'Hassan', '1981-07-07', 'M', '09120000022', N'reza.karimi@psych.university.edu', '2009-04-22', 11, N'Lecturer', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'2897167092', N'Iran', N'Yazd', N'Yazd', N'Shahid Madani', N'1st', N'9', N'1111111110', N'Office'),
(N'Instructor', N'8030280157', N'Iran', N'Yazd', N'Yazd', N'Shahid Madani', N'2nd', N'10', N'1111111111', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'7555230852', N'Simin', N'Farhadi', N'Mehdi', '1973-03-03', 'F', '09120000023', N'simin.farhadi@soc.university.edu', '2000-09-15', 12, N'Professor', N'Active'),
(N'6883377115', N'Mohsen', N'Taheri', N'Reza', '1985-11-11', 'M', '09120000024', N'mohsen.taheri@soc.university.edu', '2011-08-08', 12, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'7555230852', N'Iran', N'Khorasan', N'Mashhad', N'Saadi', N'3rd', N'14', N'1212121212', N'Office'),
(N'Instructor', N'6883377115', N'Iran', N'Khorasan', N'Mashhad', N'Saadi', N'4th', N'15', N'1212121213', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'6262590773', N'Mahmoud', N'Farhadi', N'Ali', '1970-01-25', 'M', '09120000025', N'mahmoud.farhadi@phil.university.edu', '1999-12-20', 13, N'Professor', N'Active'),
(N'6689440818', N'Nazanin', N'Zare', N'Hossein', '1989-09-09', 'F', '09120000026', N'nazanin.zare@phil.university.edu', '2015-01-05', 13, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'6262590773', N'Iran', N'Tehran', N'Tehran', N'Karim Khan', N'7th', N'17', N'1313131313', N'Office'),
(N'Instructor', N'6689440818', N'Iran', N'Tehran', N'Tehran', N'Karim Khan', N'8th', N'18', N'1313131314', N'Residence');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'4920212641', N'Farhad', N'Asadi', N'Mahdi', '1976-05-14', 'M', '09120000027', N'farhad.asadi@econ.university.edu', '2004-04-10', 14, N'Associate Professor', N'Active'),
(N'2880099226', N'Sara', N'Javadi', N'Reza', '1987-03-03', 'F', '09120000028', N'sara.javadi@econ.university.edu', '2013-07-07', 14, N'Lecturer', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'4920212641', N'Iran', N'Tehran', N'Tehran', N'Taghavi', N'9th', N'19', N'1414141414', N'Office'),
(N'Instructor', N'2880099226', N'Iran', N'Tehran', N'Tehran', N'Taghavi', N'10th', N'20', N'1414141415', N'Home');
DELETE FROM @OutputTable;

INSERT INTO Education.Instructors (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, HireDate, DepartmentID, Rank, Status)
OUTPUT inserted.InstructorID INTO @OutputTable
VALUES
(N'1509702830', N'Kourosh', N'Hosseini', N'Mahdi', '1972-11-11', 'M', '09120000029', N'kourosh.hosseini@lit.university.edu', '2002-05-12', 15, N'Professor', N'Active'),
(N'3857088389', N'Niloufar', N'Sadeghi', N'Reza', '1986-08-08', 'F', '09120000030', N'niloufar.sadeghi@lit.university.edu', '2010-06-18', 15, N'Assistant Professor', N'Active');
INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Instructor', N'1509702830', N'Iran', N'Isfahan', N'Isfahan', N'Chaharbagh', N'1st', N'1', N'1515151515', N'Office'),
(N'Instructor', N'3857088389', N'Iran', N'Isfahan', N'Isfahan', N'Chaharbagh', N'2nd', N'2', N'1515151516', N'Home');
DELETE FROM @OutputTable;


    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
