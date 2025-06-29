USE UniversityPortalDB;
GO

BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @OutputTable TABLE (StudentID INT);

    INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
    OUTPUT inserted.StudentID INTO @OutputTable
    VALUES 
    (N'8161186367', N'Ahmad', N'Rahimi', N'Mohammad', '2000-05-15', 'M', '09121112222', N'ahmad.rahimi@example.com', 2018, 1, 1, N'Active'),
    (N'6096543782', N'Sara', N'Mohammadi', N'Ali', '1999-11-21', 'F', '09123334455', N'sara.mohammadi@example.com', 2019, 1, 1, N'Active');

    INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES
    (N'Student', N'8161186367', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'12th', N'34', N'0071234567', N'Home address'),
    (N'Student', N'6096543782', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'5th', N'21', N'0071234568', N'Dormitory');

    DELETE FROM @OutputTable;

    INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
    OUTPUT inserted.StudentID INTO @OutputTable
    VALUES 
    (N'5380019056', N'Mehdi', N'Karimi', N'Hassan', '2001-03-10', 'M', '09124445566', N'mehdi.karimi@example.com', 2019, 1, 2, N'Active'),
    (N'0699205565', N'Fatemeh', N'Najafi', N'Reza', '2000-07-23', 'F', '09125556677', N'fatemeh.najafi@example.com', 2018, 1, 2, N'Active');

    INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES
    (N'Student', N'5380019056', N'Iran', N'Tehran', N'Tehran', N'Shariati', N'8th', N'45', N'0071234569', N'Home'),
    (N'Student', N'0699205565', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'10th', N'56', N'0071234570', N'Apartment');

    DELETE FROM @OutputTable;

    INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
    OUTPUT inserted.StudentID INTO @OutputTable
    VALUES
    (N'8984443824', N'Pouya', N'Taheri', N'Saeed', '1997-02-05', 'M', '09126667788', N'pouya.taheri@example.com', 2021, 1, 3, N'Active'),
    (N'1802985311', N'Leila', N'Shams', N'Ahmad', '1998-12-11', 'F', '09127778899', N'leila.shams@example.com', 2021, 1, 3, N'Active');

    INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES
    (N'Student', N'8984443824', N'Iran', N'Tehran', N'Tehran', N'Beheshti', N'3rd', N'67', N'0071234571', N'Home'),
    (N'Student', N'1802985311', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'9th', N'78', N'0071234572', N'Dormitory');

    DELETE FROM @OutputTable;

    INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
    OUTPUT inserted.StudentID INTO @OutputTable
    VALUES
    (N'3026686123', N'Sina', N'Ranjbar', N'Kamran', '1996-09-09', 'M', '09128889900', N'sina.ranjbar@example.com', 2022, 1, 4, N'Active'),
    (N'3786454027', N'Azadeh', N'Hosseini', N'Mohsen', '1997-04-15', 'F', '09129990011', N'azadeh.hosseini@example.com', 2022, 1, 4, N'Active');

    INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES
    (N'Student', N'3026686123', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'7th', N'89', N'0071234573', N'Home'),
    (N'Student', N'3786454027', N'Iran', N'Tehran', N'Tehran', N'Shariati', N'2nd', N'90', N'0071234574', N'Dormitory');

    DELETE FROM @OutputTable;

    INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
    OUTPUT inserted.StudentID INTO @OutputTable
    VALUES
    (N'2018889311', N'Mohammad', N'Farhadi', N'Javad', '1999-01-30', 'M', '09120001122', N'mohammad.farhadi@example.com', 2018, 2, 5, N'Active'),
    (N'8688844496', N'Parvaneh', N'Esfandiari', N'Saeed', '2000-06-25', 'F', '09121112233', N'parvaneh.esfandiari@example.com', 2019, 2, 5, N'Active');

    INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES
    (N'Student', N'2018889311', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'15th', N'10', N'0071234575', N'Home'),
    (N'Student', N'8688844496', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'20th', N'11', N'0071234576', N'Apartment');

    DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'1887483977', N'Reza', N'Ghasemi', N'Mahmoud', '1995-07-14', 'M', '09123335555', N'reza.ghasemi@example.com', 2020, 2, 6, N'Active'),
(N'0205672949', N'Simin', N'Kashani', N'Hossein', '1996-11-22', 'F', '09124446666', N'simin.kashani@example.com', 2020, 2, 6, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'1887483977', N'Iran', N'Tehran', N'Tehran', N'Beheshti', N'11th', N'15', N'0071234582', N'Home'),
(N'Student', N'0205672949', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'14th', N'16', N'0071234583', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'1831033836', N'Sadegh', N'Moradi', N'Shahin', '1997-05-06', 'M', '09125557777', N'sadegh.moradi@example.com', 2019, 2, 7, N'Active'),
(N'7526944451', N'Nazanin', N'Azizi', N'Vahid', '1998-09-17', 'F', '09126668888', N'nazanin.azizi@example.com', 2019, 2, 7, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'1831033836', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'22nd', N'18', N'0071234584', N'Home'),
(N'Student', N'7526944451', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'30th', N'20', N'0071234585', N'Dormitory');

DELETE FROM @OutputTable;

    INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
    OUTPUT inserted.StudentID INTO @OutputTable
    VALUES
    (N'5564973534', N'Navid', N'Khosravi', N'Hassan', '1998-03-11', 'M', '09125553344', N'navid.khosravi@example.com', 2019, 3, 8, N'Active'),
    (N'0801757134', N'Neda', N'Karimi', N'Ahmad', '1997-10-19', 'F', '09124442211', N'neda.karimi@example.com', 2018, 3, 8, N'Active');

    INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
    VALUES
    (N'Student', N'5564973534', N'Iran', N'Mashhad', N'Mashhad', N'Imam Reza', N'4th', N'25', N'0071234580', N'Home'),
    (N'Student', N'0801757134', N'Iran', N'Mashhad', N'Mashhad', N'Saadi', N'6th', N'26', N'0071234581', N'Dormitory');

    DELETE FROM @OutputTable;

	
INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'8102591617', N'Ahmadreza', N'Hosseini', N'Mahdi', '1996-02-28', 'M', '09127779999', N'ahmadreza.hosseini@example.com', 2021, 3, 9, N'Active'),
(N'2591630429', N'Zahra', N'Sadeghi', N'Reza', '1997-08-03', 'F', '09128880000', N'zahra.sadeghi@example.com', 2021, 3, 9, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'8102591617', N'Iran', N'Tabriz', N'Tabriz', N'Azadi', N'7th', N'21', N'0071234586', N'Home'),
(N'Student', N'2591630429', N'Iran', N'Tabriz', N'Tabriz', N'Shahid', N'9th', N'22', N'0071234587', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'7943468791', N'Mohsen', N'Rostami', N'Ali', '1995-10-19', 'M', '09129991111', N'mohsen.rostami@example.com', 2018, 4, 10, N'Active'),
(N'4282120517', N'Mina', N'Esfandi', N'Saeed', '1996-04-27', 'F', '09130002222', N'mina.esfandi@example.com', 2018, 4, 10, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'7943468791', N'Iran', N'Mashhad', N'Mashhad', N'Imam Reza', N'12th', N'31', N'0071234588', N'Home'),
(N'Student', N'4282120517', N'Iran', N'Mashhad', N'Mashhad', N'Saadi', N'14th', N'32', N'0071234589', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'4672636690', N'Javad', N'Majidi', N'Hasan', '1997-06-12', 'M', '09131113333', N'javad.majidi@example.com', 2020, 4, 11, N'Active'),
(N'9544946365', N'Sara', N'Abdollahi', N'Mohammad', '1998-12-05', 'F', '09132224444', N'sara.abdollahi@example.com', 2020, 4, 11, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'4672636690', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'3rd', N'45', N'0071234590', N'Home'),
(N'Student', N'9544946365', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'7th', N'46', N'0071234591', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'9438311238', N'Kamran', N'Azadi', N'Hassan', '1999-08-09', 'M', '09133335555', N'kamran.azadi@example.com', 2019, 5, 12, N'Active'),
(N'7609951161', N'Leyla', N'Moradi', N'Ahmad', '2000-03-14', 'F', '09134446666', N'leyla.moradi@example.com', 2019, 5, 12, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'9438311238', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'17th', N'27', N'0071234592', N'Home'),
(N'Student', N'7609951161', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'19th', N'28', N'0071234593', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'6842871948', N'Hossein', N'Mirzaei', N'Javad', '1998-01-25', 'M', '09135551111', N'hossein.mirzaei@example.com', 2017, 6, 13, N'Active'),
(N'4287962176', N'Elham', N'Sadeghi', N'Mahdi', '1999-09-12', 'F', '09136662222', N'elham.sadeghi@example.com', 2017, 6, 13, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'6842871948', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'23rd', N'29', N'0071234594', N'Home'),
(N'Student', N'4287962176', N'Iran', N'Tehran', N'Tehran', N'Shahid', N'25th', N'30', N'0071234595', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'9237134010', N'Mohammad', N'Karimi', N'Ali', '1997-03-15', 'M', '09137773333', N'mohammad.karimi@example.com', 2018, 6, 14, N'Active'),
(N'1278041567', N'Parisa', N'Jafari', N'Mehdi', '1998-07-22', 'F', '09138884444', N'parisa.jafari@example.com', 2018, 6, 14, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'9237134010', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'35th', N'33', N'0071234596', N'Home'),
(N'Student', N'1278041567', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'37th', N'34', N'0071234597', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'4575108091', N'Sina', N'Farhadi', N'Hassan', '1996-06-10', 'M', '09139995555', N'sina.farhadi@example.com', 2016, 7, 15, N'Active'),
(N'8759672218', N'Shima', N'Mohammadi', N'Kamal', '1997-12-19', 'F', '09140006666', N'shima.mohammadi@example.com', 2016, 7, 15, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'4575108091', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'40th', N'35', N'0071234598', N'Home'),
(N'Student', N'8759672218', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'42nd', N'36', N'0071234599', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'8123528574', N'Amir', N'Khalili', N'Mehdi', '1995-09-05', 'M', '09141117777', N'amir.khalili@example.com', 2017, 7, 16, N'Active'),
(N'6365327293', N'Sara', N'Naseri', N'Ahmad', '1996-03-16', 'F', '09142228888', N'sara.naseri@example.com', 2017, 7, 16, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'8123528574', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'44th', N'37', N'0071234600', N'Home'),
(N'Student', N'6365327293', N'Iran', N'Tehran', N'Tehran', N'Shahid', N'46th', N'38', N'0071234601', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'7765276761', N'Mohammad', N'Taheri', N'Reza', '1998-04-12', 'M', '09143339999', N'mohammad.taheri@example.com', 2018, 8, 17, N'Active'),
(N'6543968621', N'Neda', N'Karimi', N'Saeed', '1999-10-27', 'F', '09144440000', N'neda.karimi@example.com', 2018, 8, 17, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'7765276761', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'50th', N'39', N'0071234602', N'Home'),
(N'Student', N'6543968621', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'52nd', N'40', N'0071234603', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'8489482561', N'Saeid', N'Jafari', N'Mohammad', '1997-11-11', 'M', '09145551111', N'saeid.jafari@example.com', 2019, 8, 18, N'Active'),
(N'6217347563', N'Sara', N'Bahrami', N'Hossein', '1998-05-23', 'F', '09146662222', N'sara.bahrami@example.com', 2019, 8, 18, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'8489482561', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'54th', N'41', N'0071234604', N'Home'),
(N'Student', N'6217347563', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'56th', N'42', N'0071234605', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'8302094501', N'Kaveh', N'Moradi', N'Ahmad', '1996-07-30', 'M', '09147773333', N'kaveh.moradi@example.com', 2020, 9, 19, N'Active'),
(N'9093161946', N'Narges', N'Shams', N'Reza', '1997-01-18', 'F', '09148884444', N'narges.shams@example.com', 2020, 9, 19, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'8302094501', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'60th', N'43', N'0071234606', N'Home'),
(N'Student', N'9093161946', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'62nd', N'44', N'0071234607', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'5687822917', N'Peyman', N'Zare', N'Hossein', '1998-10-08', 'M', '09149995555', N'peyman.zare@example.com', 2020, 9, 20, N'Active'),
(N'3317457041', N'Samira', N'Karimi', N'Mehdi', '1999-04-20', 'F', '09140006666', N'samira.karimi@example.com', 2020, 9, 20, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'5687822917', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'65th', N'45', N'0071234608', N'Home'),
(N'Student', N'3317457041', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'67th', N'46', N'0071234609', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'5791791801', N'Siamak', N'Hosseini', N'Reza', '1995-12-25', 'M', '09141112222', N'siamak.hosseini@example.com', 2017, 10, 21, N'Active'),
(N'1010677470', N'Sahar', N'Kazemi', N'Hassan', '1996-08-14', 'F', '09142223333', N'sahar.kazemi@example.com', 2017, 10, 21, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'5791791801', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'70th', N'47', N'0071234610', N'Home'),
(N'Student', N'1010677470', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'72nd', N'48', N'0071234611', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'3411033789', N'Navid', N'Rahmani', N'Mohammad', '1997-01-02', 'M', '09143334444', N'navid.rahmani@example.com', 2018, 11, 22, N'Active'),
(N'2624556583', N'Parvaneh', N'Shams', N'Hossein', '1998-06-15', 'F', '09144445555', N'parvaneh.shams@example.com', 2018, 11, 22, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'3411033789', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'75th', N'49', N'0071234612', N'Home'),
(N'Student', N'2624556583', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'77th', N'50', N'0071234613', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'7183802027', N'Hossein', N'Mohammadi', N'Ali', '1996-11-10', 'M', '09145556666', N'hossein.mohammadi@example.com', 2019, 11, 23, N'Active'),
(N'3982059836', N'Simindokht', N'Ghasemi', N'Mehdi', '1997-03-23', 'F', '09146667777', N'simindokht.ghasemi@example.com', 2019, 11, 23, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'7183802027', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'80th', N'51', N'0071234614', N'Home'),
(N'Student', N'3982059836', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'82nd', N'52', N'0071234615', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'8944308691', N'Babak', N'Ahmadi', N'Saeid', '1997-05-05', 'M', '09147778888', N'babak.ahmadi@example.com', 2020, 12, 24, N'Active'),
(N'8091927487', N'Farzaneh', N'Mohammadi', N'Kamal', '1998-09-17', 'F', '09148889999', N'farzaneh.mohammadi@example.com', 2020, 12, 24, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'8944308691', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'85th', N'53', N'0071234616', N'Home'),
(N'Student', N'8091927487', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'87th', N'54', N'0071234617', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'5296637674', N'Kian', N'Soleimani', N'Hossein', '1996-03-30', 'M', '09149990000', N'kian.soleimani@example.com', 2017, 13, 25, N'Active'),
(N'5779918392', N'Nazanin', N'Fatahi', N'Saeed', '1997-08-12', 'F', '09140001111', N'nazanin.fatahi@example.com', 2017, 13, 25, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'5296637674', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'90th', N'55', N'0071234618', N'Home'),
(N'Student', N'5779918392', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'92nd', N'56', N'0071234619', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'8070742364', N'Mehdi', N'Moradi', N'Ali', '1995-10-20', 'M', '09142223344', N'mehdi.moradi@example.com', 2018, 13, 26, N'Active'),
(N'0457562781', N'Elham', N'Soleimani', N'Mohammad', '1996-02-14', 'F', '09143334455', N'elham.soleimani@example.com', 2018, 13, 26, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'8070742364', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'95th', N'57', N'0071234620', N'Home'),
(N'Student', N'0457562781', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'97th', N'58', N'0071234621', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'2633676170', N'Navid', N'Hosseini', N'Mohammad', '1999-01-11', 'M', '09145550000', N'navid.hosseini@example.com', 2019, 14, 27, N'Active'),
(N'7080356601', N'Sara', N'Karimi', N'Ahmad', '1999-12-05', 'F', '09146661111', N'sara.karimi@example.com', 2019, 14, 27, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'2633676170', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'100th', N'59', N'0071234622', N'Home'),
(N'Student', N'7080356601', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'102nd', N'60', N'0071234623', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'5525530139', N'Ali', N'Mohammadi', N'Hassan', '1998-07-07', 'M', '09147772222', N'ali.mohammadi@example.com', 2018, 14, 28, N'Active'),
(N'4896226429', N'Fatemeh', N'Sadeghi', N'Mehdi', '1997-11-20', 'F', '09148883333', N'fatemeh.sadeghi@example.com', 2018, 14, 28, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'5525530139', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'105th', N'61', N'0071234624', N'Home'),
(N'Student', N'4896226429', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'107th', N'62', N'0071234625', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'3565223091', N'Behzad', N'Moradi', N'Saeid', '1999-03-18', 'M', '09149994444', N'behzad.moradi@example.com', 2019, 14, 29, N'Active'),
(N'9647551665', N'Niloofar', N'Sharifi', N'Hossein', '1999-10-29', 'F', '09140005555', N'niloofar.sharifi@example.com', 2019, 14, 29, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'3565223091', N'Iran', N'Tehran', N'Tehran', N'Valiasr', N'110th', N'63', N'0071234626', N'Home'),
(N'Student', N'9647551665', N'Iran', N'Tehran', N'Tehran', N'Sattar', N'112th', N'64', N'0071234627', N'Dormitory');

DELETE FROM @OutputTable;

INSERT INTO Education.Students (NationalCode, FirstName, LastName, FatherName, BirthDate, Gender, PhoneNumber, Email, EntryYear, DepartmentID, MajorID, Status_Education)
OUTPUT inserted.StudentID INTO @OutputTable
VALUES
(N'2595720198', N'Mehdi', N'Taheri', N'Reza', '1997-04-26', 'M', '09142226666', N'mehdi.taheri@example.com', 2018, 15, 30, N'Active'),
(N'8815494839', N'Parisa', N'Mohammadi', N'Ali', '1998-08-13', 'F', '09143337777', N'parisa.mohammadi@example.com', 2018, 15, 30, N'Active');

INSERT INTO Education.Addresses (EntityType, EntityID, Country, Province, City, Street, Alley, PlaqueNumber, PostalCode, ExtraDescription)
VALUES
(N'Student', N'2595720198', N'Iran', N'Tehran', N'Tehran', N'Azadi', N'115th', N'65', N'0071234628', N'Home'),
(N'Student', N'8815494839', N'Iran', N'Tehran', N'Tehran', N'Enghelab', N'117th', N'66', N'0071234629', N'Dormitory');

DELETE FROM @OutputTable;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
