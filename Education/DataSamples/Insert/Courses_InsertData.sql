﻿USE UniversityPortalDB;
GO

INSERT INTO Education.Courses (CourseName, CourseCode, Credits, CourseType, Degree, MajorID, DepartmentID) VALUES

(N'Programming Basics', 'CE101', 3, N'Theory', N'Bachelor', 1, 1),
(N'Data Structures', 'CE102', 4, N'Theory', N'Bachelor', 1, 1),
(N'Computer Architecture', 'CE103', 3, N'Theory', N'Bachelor', 1, 1),
(N'Operating Systems', 'CE104', 3, N'Theory', N'Bachelor', 1, 1),
(N'Software Engineering Basics', 'CE105', 2, N'Practical', N'Bachelor', 1, 1),

(N'Software Design', 'CE201', 3, N'Theory', N'Bachelor', 2, 1),
(N'Software Testing', 'CE202', 2, N'Practical', N'Bachelor', 2, 1),
(N'Project Management', 'CE203', 3, N'Theory', N'Bachelor', 2, 1),
(N'Web Development', 'CE204', 3, N'Practical', N'Bachelor', 2, 1),
(N'Database Systems', 'CE205', 4, N'Theory', N'Bachelor', 2, 1),

(N'Machine Learning', 'CE301', 4, N'Theory', N'Master', 3, 1),
(N'Neural Networks', 'CE302', 3, N'Theory', N'Master', 3, 1),
(N'Natural Language Processing', 'CE303', 3, N'Theory', N'Master', 3, 1),
(N'AI Ethics', 'CE304', 2, N'Theory', N'Master', 3, 1),
(N'Robotics', 'CE305', 3, N'Practical', N'Master', 3, 1),

(N'Network Security', 'CE401', 3, N'Theory', N'Master', 4, 1),
(N'Cryptography', 'CE402', 3, N'Theory', N'Master', 4, 1),
(N'Penetration Testing', 'CE403', 2, N'Practical', N'Master', 4, 1),
(N'Security Policies', 'CE404', 2, N'Theory', N'Master', 4, 1),
(N'Cyber Law', 'CE405', 3, N'Theory', N'Master', 4, 1),

(N'Power Systems', 'EE101', 4, N'Theory', N'Bachelor', 5, 2),
(N'Electrical Machines', 'EE102', 3, N'Practical', N'Bachelor', 5, 2),
(N'Power Electronics', 'EE103', 3, N'Theory', N'Bachelor', 5, 2),
(N'Renewable Energy', 'EE104', 2, N'Theory', N'Bachelor', 5, 2),
(N'Circuit Analysis', 'EE105', 3, N'Theory', N'Bachelor', 5, 2),

(N'Control Systems', 'EE201', 4, N'Theory', N'Master', 6, 2),
(N'Advanced Control', 'EE202', 3, N'Theory', N'Master', 6, 2),
(N'System Identification', 'EE203', 2, N'Practical', N'Master', 6, 2),
(N'Robust Control', 'EE204', 3, N'Theory', N'Master', 6, 2),
(N'Process Control', 'EE205', 3, N'Theory', N'Master', 6, 2),

(N'Analog Electronics', 'EE301', 3, N'Theory', N'Bachelor', 7, 2),
(N'Digital Electronics', 'EE302', 4, N'Theory', N'Bachelor', 7, 2),
(N'Microprocessors', 'EE303', 3, N'Practical', N'Bachelor', 7, 2),
(N'Signal Processing', 'EE304', 3, N'Theory', N'Bachelor', 7, 2),
(N'Embedded Systems', 'EE305', 2, N'Practical', N'Bachelor', 7, 2),

(N'Solid Mechanics', 'ME101', 3, N'Theory', N'Bachelor', 8, 3),
(N'Material Science', 'ME102', 3, N'Theory', N'Bachelor', 8, 3),
(N'CAD Design', 'ME103', 4, N'Practical', N'Bachelor', 8, 3),
(N'Thermodynamics', 'ME104', 3, N'Theory', N'Bachelor', 8, 3),
(N'Mechanical Vibrations', 'ME105', 3, N'Theory', N'Bachelor', 8, 3),

(N'Fluid Mechanics', 'ME201', 4, N'Theory', N'Master', 9, 3),
(N'Computational Fluid Dynamics', 'ME202', 3, N'Theory', N'Master', 9, 3),
(N'Heat Transfer2', 'ME203', 3, N'Theory', N'Master', 9, 3),
(N'Hydraulics', 'ME204', 2, N'Practical', N'Master', 9, 3),
(N'Aerodynamics', 'ME205', 3, N'Theory', N'Master', 9, 3),

(N'Structural Analysis', 'CIE101', 4, N'Theory', N'Bachelor', 10, 4),
(N'Concrete Design', 'CIE102', 3, N'Practical', N'Bachelor', 10, 4),
(N'Steel Structures', 'CIE103', 3, N'Theory', N'Bachelor', 10, 4),
(N'Foundation Engineering', 'CIE104', 3, N'Theory', N'Bachelor', 10, 4),
(N'Construction Management', 'CIE105', 2, N'Theory', N'Bachelor', 10, 4),

(N'Earthquake Engineering', 'CIE201', 4, N'Theory', N'Master', 11, 4),
(N'Seismic Design', 'CIE202', 3, N'Theory', N'Master', 11, 4),
(N'Damage Assessment', 'CIE203', 3, N'Practical', N'Master', 11, 4),
(N'Risk Management', 'CIE204', 2, N'Theory', N'Master', 11, 4),
(N'Structural Dynamics', 'CIE205', 3, N'Theory', N'Master', 11, 4),

(N'Reaction Engineering', 'CHE101', 4, N'Theory', N'Bachelor', 12, 5),
(N'Mass Transfer', 'CHE102', 3, N'Theory', N'Bachelor', 12, 5),
(N'Heat Transfer', 'CHE103', 3, N'Theory', N'Bachelor', 12, 5),
(N'Process Control2', 'CHE104', 2, N'Practical', N'Bachelor', 12, 5),
(N'Chemical Thermodynamics', 'CHE105', 3, N'Theory', N'Bachelor', 12, 5),

(N'Abstract Algebra', 'MATH101', 3, N'Theory', N'Bachelor', 13, 6),
(N'Analysis I', 'MATH102', 4, N'Theory', N'Bachelor', 13, 6),
(N'Number Theory', 'MATH103', 3, N'Theory', N'Bachelor', 13, 6),
(N'Topology', 'MATH104', 3, N'Theory', N'Bachelor', 13, 6),
(N'Linear Algebra', 'MATH105', 3, N'Theory', N'Bachelor', 13, 6),

(N'Differential Equations', 'MATH201', 4, N'Theory', N'Master', 14, 6),
(N'Numerical Methods', 'MATH202', 3, N'Theory', N'Master', 14, 6),
(N'Mathematical Modeling', 'MATH203', 3, N'Theory', N'Master', 14, 6),
(N'Statistics', 'MATH204', 2, N'Theory', N'Master', 14, 6),
(N'Optimization', 'MATH205', 3, N'Theory', N'Master', 14, 6),

(N'Quantum Mechanics', 'PHYS101', 4, N'Theory', N'Bachelor', 15, 7),
(N'Atomic Physics', 'PHYS102', 3, N'Theory', N'Bachelor', 15, 7),
(N'Electromagnetism', 'PHYS103', 3, N'Theory', N'Bachelor', 15, 7),
(N'Thermodynamics2', 'PHYS104', 3, N'Theory', N'Bachelor', 15, 7),
(N'Optics', 'PHYS105', 3, N'Practical', N'Bachelor', 15, 7),

(N'Solid State Physics', 'PHYS201', 4, N'Theory', N'Master', 16, 7),
(N'Condensed Matter', 'PHYS202', 3, N'Theory', N'Master', 16, 7),
(N'Semiconductor Physics', 'PHYS203', 3, N'Theory', N'Master', 16, 7),
(N'Nanotechnology', 'PHYS204', 2, N'Practical', N'Master', 16, 7),
(N'Crystallography', 'PHYS205', 3, N'Theory', N'Master', 16, 7),

(N'Organic Chemistry I', 'CHEM101', 4, N'Theory', N'Bachelor', 17, 8),
(N'Organic Chemistry II', 'CHEM102', 3, N'Theory', N'Bachelor', 17, 8),
(N'Analytical Chemistry', 'CHEM103', 3, N'Theory', N'Bachelor', 17, 8),
(N'Physical Chemistry', 'CHEM104', 2, N'Theory', N'Bachelor', 17, 8),
(N'Biochemistry', 'CHEM105', 3, N'Theory', N'Bachelor', 17, 8),

(N'Instrumental Analysis', 'CHEM201', 4, N'Theory', N'Master', 18, 8),
(N'Chemical Spectroscopy', 'CHEM202', 3, N'Theory', N'Master', 18, 8),
(N'Chromatography', 'CHEM203', 3, N'Theory', N'Master', 18, 8),
(N'Environmental Chemistry', 'CHEM204', 2, N'Theory', N'Master', 18, 8),
(N'Electrochemistry', 'CHEM205', 3, N'Theory', N'Master', 18, 8),

(N'Cell Biology', 'BIO101', 4, N'Theory', N'Bachelor', 19, 9),
(N'Molecular Genetics', 'BIO102', 3, N'Theory', N'Bachelor', 19, 9),
(N'Biochemistry2', 'BIO103', 3, N'Theory', N'Bachelor', 19, 9),
(N'Immunology', 'BIO104', 2, N'Theory', N'Bachelor', 19, 9),
(N'Genomics', 'BIO105', 3, N'Theory', N'Bachelor', 19, 9),

(N'Genetic Engineering', 'BIO201', 4, N'Master', N'Master', 20, 9),
(N'Population Genetics', 'BIO202', 3, N'Theory', N'Master', 20, 9),
(N'Epigenetics', 'BIO203', 3, N'Theory', N'Master', 20, 9),
(N'Gene Therapy', 'BIO204', 2, N'Theory', N'Master', 20, 9),
(N'Molecular Diagnostics', 'BIO205', 3, N'Theory', N'Master', 20, 9),

(N'Persian Poetry', 'PL101', 4, N'Theory', N'Bachelor', 21, 10),
(N'Classical Literature', 'PL102', 3, N'Theory', N'Bachelor', 21, 10),
(N'Modern Literature', 'PL103', 3, N'Theory', N'Bachelor', 21, 10),
(N'Persian Prose', 'PL104', 2, N'Theory', N'Bachelor', 21, 10),
(N'Literary Criticism2', 'PL105', 3, N'Theory', N'Bachelor', 21, 10),

(N'Constitutional Law', 'LAW101', 3, N'Theory', N'Bachelor', 22, 11),
(N'Criminal Law', 'LAW102', 4, N'Theory', N'Bachelor', 22, 11),
(N'Civil Law', 'LAW103', 3, N'Theory', N'Bachelor', 22, 11),
(N'Contract Law', 'LAW104', 2, N'Theory', N'Bachelor', 22, 11),
(N'International Law Basics', 'LAW105', 3, N'Theory', N'Bachelor', 22, 11),

(N'International Law', 'LAW201', 3, N'Master', N'Master', 23, 11),
(N'Human Rights Law', 'LAW202', 3, N'Theory', N'Master', 23, 11),
(N'International Trade Law', 'LAW203', 3, N'Theory', N'Master', 23, 11),
(N'International Dispute Resolution', 'LAW204', 2, N'Theory', N'Master', 23, 11),
(N'Comparative Law', 'LAW205', 3, N'Theory', N'Master', 23, 11),

(N'Public Policy', 'POL101', 3, N'Theory', N'Bachelor', 24, 12),
(N'Political Theory', 'POL102', 3, N'Theory', N'Bachelor', 24, 12),
(N'International Relations', 'POL103', 3, N'Theory', N'Bachelor', 24, 12),
(N'Policy Analysis', 'POL104', 2, N'Theory', N'Bachelor', 24, 12),
(N'Governance', 'POL105', 3, N'Theory', N'Bachelor', 24, 12),

(N'Operations Management', 'MGT101', 3, N'Theory', N'Bachelor', 25, 13),
(N'Supply Chain Management', 'MGT102', 3, N'Theory', N'Bachelor', 25, 13),
(N'Quality Control', 'MGT103', 2, N'Theory', N'Bachelor', 25, 13),
(N'Production Planning', 'MGT104', 3, N'Theory', N'Bachelor', 25, 13),
(N'Industrial Safety', 'MGT105', 2, N'Theory', N'Bachelor', 25, 13),

(N'Financial Management', 'MGT201', 3, N'Theory', N'Master', 26, 13),
(N'Investment Analysis', 'MGT202', 3, N'Theory', N'Master', 26, 13),
(N'Risk Management2', 'MGT203', 3, N'Theory', N'Master', 26, 13),
(N'Corporate Finance', 'MGT204', 2, N'Theory', N'Master', 26, 13),
(N'Portfolio Management', 'MGT205', 3, N'Theory', N'Master', 26, 13),

(N'Clinical Psychology', 'PSY101', 3, N'Theory', N'Bachelor', 27, 14),
(N'Psychopathology', 'PSY102', 3, N'Theory', N'Bachelor', 27, 14),
(N'Therapeutic Techniques', 'PSY103', 2, N'Practical', N'Bachelor', 27, 14),
(N'Neuropsychology', 'PSY104', 3, N'Theory', N'Bachelor', 27, 14),
(N'Child Psychology', 'PSY105', 3, N'Theory', N'Bachelor', 27, 14),

(N'Educational Psychology', 'PSY201', 3, N'Theory', N'Master', 28, 14),
(N'Learning Theories', 'PSY202', 3, N'Theory', N'Master', 28, 14),
(N'Developmental Psychology', 'PSY203', 3, N'Theory', N'Master', 28, 14),
(N'Assessment Techniques', 'PSY204', 2, N'Practical', N'Master', 28, 14),
(N'Counseling', 'PSY205', 3, N'Theory', N'Master', 28, 14),

(N'English Literature', 'ENG101', 4, N'Theory', N'Bachelor', 29, 15),
(N'English Grammar', 'ENG102', 3, N'Theory', N'Bachelor', 29, 15),
(N'Literary Criticism', 'ENG103', 3, N'Theory', N'Bachelor', 29, 15),
(N'Creative Writing', 'ENG104', 2, N'Theory', N'Bachelor', 29, 15),
(N'Translation Studies', 'ENG105', 3, N'Theory', N'Bachelor', 29, 15),

(N'Language Teaching Methods', 'ENG201', 3, N'Theory', N'Master', 30, 15),
(N'Curriculum Design', 'ENG202', 3, N'Theory', N'Master', 30, 15),
(N'Teaching Practicum', 'ENG203', 2, N'Practical', N'Master', 30, 15),
(N'Assessment in Language Teaching', 'ENG204', 3, N'Theory', N'Master', 30, 15),
(N'Second Language Acquisition', 'ENG205', 3, N'Theory', N'Master', 30, 15),


(N'ریاضی عمومی 1', 'CE106', 3, N'Theory', N'Bachelor', 1, 1),
(N'فیزیک 1', 'CE107', 3, N'Theory', N'Bachelor', 1, 1),
(N'مبانی برنامه سازی', 'CE108', 3, N'Theory', N'Bachelor', 1, 1),
(N'کارگاه کامپیوتر', 'CE109', 3, N'Practical', N'Bachelor', 1, 1),
(N'آشنایی بامهندسی کامپیوتر', 'CE110', 3, N'Theory', N'Bachelor', 1, 1),
(N'زبان عمومی', 'CE111', 3, N'Theory', N'Bachelor', 1, 1),
(N'تربیت بدنی1', 'CE112', 3, N'Practical', N'Bachelor', 1, 1),
(N'ریاضی عمومی 2', 'CE113', 3, N'Theory', N'Bachelor', 1, 1),
(N'فیزیک 2', 'CE114', 3, N'Theory', N'Bachelor', 1, 1),
(N'برنامه سازی پیشرفته', 'CE115', 3, N'Theory', N'Bachelor', 1, 1),
(N'ساختمان گسسته', 'CE116', 3, N'Theory', N'Bachelor', 1, 1),
(N'معادلات دیفرانسیل', 'CE117', 3, N'Theory', N'Bachelor', 1, 1),
(N'آز فیزیک الکتریسیته', 'CE118', 3, N'Practical', N'Bachelor', 1, 1),
(N'آمار و احتمال مهندسی', 'CE119', 3, N'Theory', N'Bachelor', 1, 1),
(N'ریاضی مهندسی', 'CE120', 3, N'Theory', N'Bachelor', 1, 1),
(N'مدارهای الکتریکی', 'CE121', 3, N'Theory', N'Bachelor', 1, 1),
(N'ساختمان داده', 'CE122', 3, N'Theory', N'Bachelor', 1, 1),
(N'طراحی دیحیتال1', 'CE123', 3, N'Theory', N'Bachelor', 1, 1),
(N'آز طراحی دیحیتال1', 'CE124', 3, N'Practical', N'Bachelor', 1, 1),
(N'معماری و سازمان کامپیوتر', 'CE125', 3, N'Theory', N'Bachelor', 1, 1),
(N'شبکه های کامپیوتری', 'CE126', 3, N'Theory', N'Bachelor', 1, 1),
(N'طراحی الگوریتم ها', 'CE127', 3, N'Theory', N'Bachelor', 1, 1),
(N'پایگاه داده ها1', 'CE128', 3, N'Theory', N'Bachelor', 1, 1),
(N'آز شبکه های کامپیوتری', 'CE129', 3, N'Practical', N'Bachelor', 1, 1),
(N'زبان تخصصی کامپیوتر', 'CE130', 3, N'Theory', N'Bachelor', 1, 1),
(N'تربیت بدنی2', 'CE131', 3, N'Practical', N'Bachelor', 1, 1),
(N'ریز پردازنده', 'CE132', 3, N'Theory', N'Bachelor', 1, 1),
(N'سیستم عامل', 'CE133', 3, N'Theory', N'Bachelor', 1, 1),
(N'سیگنال ها و سیستم ها', 'CE134', 3, N'Theory', N'Bachelor', 1, 1),
(N'هوش مصنوعی', 'CE135', 3, N'Theory', N'Bachelor', 1, 1),
(N'نظریه زبان ها و ماشین ها', 'CE136', 3, N'Theory', N'Bachelor', 1, 1),
(N'آز سیستم عامل', 'CE137', 3, N'Practical', N'Bachelor', 1, 1),
(N'آز ریزپردازنده', 'CE138', 3, N'Practical', N'Bachelor', 1, 1),
(N'ارائه مطالب علمی و فنی', 'CE139', 3, N'Theory', N'Bachelor', 1, 1),
(N'شبکه های کامپیوتری 2', 'CE140', 3, N'Theory', N'Bachelor', 1, 1),
(N'محاسبات ابری', 'CE141', 3, N'Theory', N'Bachelor', 1, 1),
(N'مهندسی نرم افزار1', 'CE142', 3, N'Theory', N'Bachelor', 1, 1),
(N'آز مهندسی نرم', 'CE143', 3, N'Practical', N'Bachelor', 1, 1),
(N'کامپایلر', 'CE144', 3, N'Theory', N'Bachelor', 1, 1),
(N'آز پایگاه داده', 'CE145', 3, N'Theory', N'Bachelor', 1, 1),
(N'پروژه کارشناسی', 'CE146', 3, N'Practical', N'Bachelor', 1, 1),
(N'مهندسی نرم افزار2', 'CE147', 3, N'Theory', N'Bachelor', 1, 1),
(N'مبانی داده کاوی', 'CE148', 3, N'Theory', N'Bachelor', 1, 1),
(N'پایگاه داده ها2', 'CE149', 3, N'Theory', N'Bachelor', 1, 1),
(N'گراف کاوی', 'CE150', 3, N'Theory', N'Bachelor', 1, 1),
(N'مبانی هوش محاسباتی', 'CE151', 3, N'Theory', N'Bachelor', 1, 1);



