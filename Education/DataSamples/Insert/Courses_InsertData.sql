USE UniversityPortalDB;
GO
DELETE FROM Courses;

DBCC CHECKIDENT ('Courses', RESEED, 0);

INSERT INTO Courses (CourseName, CourseCode, Credits, CourseType, Degree, MajorID, DepartmentID) VALUES
-- ÑÔÊå 1: Computer Engineering (MajorID=1, DepartmentID=1)
(N'Programming Basics', 'CE101', 3, N'Theory', N'Bachelor', 1, 1),
(N'Data Structures', 'CE102', 4, N'Theory', N'Bachelor', 1, 1),
(N'Computer Architecture', 'CE103', 3, N'Theory', N'Bachelor', 1, 1),
(N'Operating Systems', 'CE104', 3, N'Theory', N'Bachelor', 1, 1),
(N'Software Engineering Basics', 'CE105', 2, N'Practical', N'Bachelor', 1, 1),

-- ÑÔÊå 2: Software Engineering (MajorID=2, DepartmentID=1)
(N'Software Design', 'CE201', 3, N'Theory', N'Bachelor', 2, 1),
(N'Software Testing', 'CE202', 2, N'Practical', N'Bachelor', 2, 1),
(N'Project Management', 'CE203', 3, N'Theory', N'Bachelor', 2, 1),
(N'Web Development', 'CE204', 3, N'Practical', N'Bachelor', 2, 1),
(N'Database Systems', 'CE205', 4, N'Theory', N'Bachelor', 2, 1),

-- ÑÔÊå 3: Artificial Intelligence (MajorID=3, DepartmentID=1)
(N'Machine Learning', 'CE301', 4, N'Theory', N'Master', 3, 1),
(N'Neural Networks', 'CE302', 3, N'Theory', N'Master', 3, 1),
(N'Natural Language Processing', 'CE303', 3, N'Theory', N'Master', 3, 1),
(N'AI Ethics', 'CE304', 2, N'Theory', N'Master', 3, 1),
(N'Robotics', 'CE305', 3, N'Practical', N'Master', 3, 1),

-- ÑÔÊå 4: Cybersecurity (MajorID=4, DepartmentID=1)
(N'Network Security', 'CE401', 3, N'Theory', N'Master', 4, 1),
(N'Cryptography', 'CE402', 3, N'Theory', N'Master', 4, 1),
(N'Penetration Testing', 'CE403', 2, N'Practical', N'Master', 4, 1),
(N'Security Policies', 'CE404', 2, N'Theory', N'Master', 4, 1),
(N'Cyber Law', 'CE405', 3, N'Theory', N'Master', 4, 1),

-- ÑÔÊå 5: Electrical Engineering - Power (MajorID=5, DepartmentID=2)
(N'Power Systems', 'EE101', 4, N'Theory', N'Bachelor', 5, 2),
(N'Electrical Machines', 'EE102', 3, N'Practical', N'Bachelor', 5, 2),
(N'Power Electronics', 'EE103', 3, N'Theory', N'Bachelor', 5, 2),
(N'Renewable Energy', 'EE104', 2, N'Theory', N'Bachelor', 5, 2),
(N'Circuit Analysis', 'EE105', 3, N'Theory', N'Bachelor', 5, 2),

-- ÑÔÊå 6: Electrical Engineering - Control (MajorID=6, DepartmentID=2)
(N'Control Systems', 'EE201', 4, N'Theory', N'Master', 6, 2),
(N'Advanced Control', 'EE202', 3, N'Theory', N'Master', 6, 2),
(N'System Identification', 'EE203', 2, N'Practical', N'Master', 6, 2),
(N'Robust Control', 'EE204', 3, N'Theory', N'Master', 6, 2),
(N'Process Control', 'EE205', 3, N'Theory', N'Master', 6, 2),

-- ÑÔÊå 7: Electrical Engineering - Electronics (MajorID=7, DepartmentID=2)
(N'Analog Electronics', 'EE301', 3, N'Theory', N'Bachelor', 7, 2),
(N'Digital Electronics', 'EE302', 4, N'Theory', N'Bachelor', 7, 2),
(N'Microprocessors', 'EE303', 3, N'Practical', N'Bachelor', 7, 2),
(N'Signal Processing', 'EE304', 3, N'Theory', N'Bachelor', 7, 2),
(N'Embedded Systems', 'EE305', 2, N'Practical', N'Bachelor', 7, 2),

-- ÑÔÊå 8: Mechanical Engineering - Solid Design (MajorID=8, DepartmentID=3)
(N'Solid Mechanics', 'ME101', 3, N'Theory', N'Bachelor', 8, 3),
(N'Material Science', 'ME102', 3, N'Theory', N'Bachelor', 8, 3),
(N'CAD Design', 'ME103', 4, N'Practical', N'Bachelor', 8, 3),
(N'Thermodynamics', 'ME104', 3, N'Theory', N'Bachelor', 8, 3),
(N'Mechanical Vibrations', 'ME105', 3, N'Theory', N'Bachelor', 8, 3),

-- ÑÔÊå 9: Mechanical Engineering - Fluids (MajorID=9, DepartmentID=3)
(N'Fluid Mechanics', 'ME201', 4, N'Theory', N'Master', 9, 3),
(N'Computational Fluid Dynamics', 'ME202', 3, N'Theory', N'Master', 9, 3),
(N'Heat Transfer2', 'ME203', 3, N'Theory', N'Master', 9, 3),
(N'Hydraulics', 'ME204', 2, N'Practical', N'Master', 9, 3),
(N'Aerodynamics', 'ME205', 3, N'Theory', N'Master', 9, 3),

-- ÑÔÊå 10: Civil Engineering - Structures (MajorID=10, DepartmentID=4)
(N'Structural Analysis', 'CIE101', 4, N'Theory', N'Bachelor', 10, 4),
(N'Concrete Design', 'CIE102', 3, N'Practical', N'Bachelor', 10, 4),
(N'Steel Structures', 'CIE103', 3, N'Theory', N'Bachelor', 10, 4),
(N'Foundation Engineering', 'CIE104', 3, N'Theory', N'Bachelor', 10, 4),
(N'Construction Management', 'CIE105', 2, N'Theory', N'Bachelor', 10, 4),

-- ÑÔÊå 11: Civil Engineering - Earthquake (MajorID=11, DepartmentID=4)
(N'Earthquake Engineering', 'CIE201', 4, N'Theory', N'Master', 11, 4),
(N'Seismic Design', 'CIE202', 3, N'Theory', N'Master', 11, 4),
(N'Damage Assessment', 'CIE203', 3, N'Practical', N'Master', 11, 4),
(N'Risk Management', 'CIE204', 2, N'Theory', N'Master', 11, 4),
(N'Structural Dynamics', 'CIE205', 3, N'Theory', N'Master', 11, 4),

-- ÑÔÊå 12: Chemical Engineering - Process Design (MajorID=12, DepartmentID=5)
(N'Reaction Engineering', 'CHE101', 4, N'Theory', N'Bachelor', 12, 5),
(N'Mass Transfer', 'CHE102', 3, N'Theory', N'Bachelor', 12, 5),
(N'Heat Transfer', 'CHE103', 3, N'Theory', N'Bachelor', 12, 5),
(N'Process Control2', 'CHE104', 2, N'Practical', N'Bachelor', 12, 5),
(N'Chemical Thermodynamics', 'CHE105', 3, N'Theory', N'Bachelor', 12, 5),

-- ÑÔÊå 13: Mathematics - Pure (MajorID=13, DepartmentID=6)
(N'Abstract Algebra', 'MATH101', 3, N'Theory', N'Bachelor', 13, 6),
(N'Analysis I', 'MATH102', 4, N'Theory', N'Bachelor', 13, 6),
(N'Number Theory', 'MATH103', 3, N'Theory', N'Bachelor', 13, 6),
(N'Topology', 'MATH104', 3, N'Theory', N'Bachelor', 13, 6),
(N'Linear Algebra', 'MATH105', 3, N'Theory', N'Bachelor', 13, 6),

-- ÑÔÊå 14: Mathematics - Applied (MajorID=14, DepartmentID=6)
(N'Differential Equations', 'MATH201', 4, N'Theory', N'Master', 14, 6),
(N'Numerical Methods', 'MATH202', 3, N'Theory', N'Master', 14, 6),
(N'Mathematical Modeling', 'MATH203', 3, N'Theory', N'Master', 14, 6),
(N'Statistics', 'MATH204', 2, N'Theory', N'Master', 14, 6),
(N'Optimization', 'MATH205', 3, N'Theory', N'Master', 14, 6),

-- ÑÔÊå 15: Physics - Atomic (MajorID=15, DepartmentID=7)
(N'Quantum Mechanics', 'PHYS101', 4, N'Theory', N'Bachelor', 15, 7),
(N'Atomic Physics', 'PHYS102', 3, N'Theory', N'Bachelor', 15, 7),
(N'Electromagnetism', 'PHYS103', 3, N'Theory', N'Bachelor', 15, 7),
(N'Thermodynamics2', 'PHYS104', 3, N'Theory', N'Bachelor', 15, 7),
(N'Optics', 'PHYS105', 3, N'Practical', N'Bachelor', 15, 7),

-- ÑÔÊå 16: Physics - Solid State (MajorID=16, DepartmentID=7)
(N'Solid State Physics', 'PHYS201', 4, N'Theory', N'Master', 16, 7),
(N'Condensed Matter', 'PHYS202', 3, N'Theory', N'Master', 16, 7),
(N'Semiconductor Physics', 'PHYS203', 3, N'Theory', N'Master', 16, 7),
(N'Nanotechnology', 'PHYS204', 2, N'Practical', N'Master', 16, 7),
(N'Crystallography', 'PHYS205', 3, N'Theory', N'Master', 16, 7),

-- ÑÔÊå 17: Chemistry - Organic (MajorID=17, DepartmentID=8)
(N'Organic Chemistry I', 'CHEM101', 4, N'Theory', N'Bachelor', 17, 8),
(N'Organic Chemistry II', 'CHEM102', 3, N'Theory', N'Bachelor', 17, 8),
(N'Analytical Chemistry', 'CHEM103', 3, N'Theory', N'Bachelor', 17, 8),
(N'Physical Chemistry', 'CHEM104', 2, N'Theory', N'Bachelor', 17, 8),
(N'Biochemistry', 'CHEM105', 3, N'Theory', N'Bachelor', 17, 8),

-- ÑÔÊå 18: Chemistry - Analytical (MajorID=18, DepartmentID=8)
(N'Instrumental Analysis', 'CHEM201', 4, N'Theory', N'Master', 18, 8),
(N'Chemical Spectroscopy', 'CHEM202', 3, N'Theory', N'Master', 18, 8),
(N'Chromatography', 'CHEM203', 3, N'Theory', N'Master', 18, 8),
(N'Environmental Chemistry', 'CHEM204', 2, N'Theory', N'Master', 18, 8),
(N'Electrochemistry', 'CHEM205', 3, N'Theory', N'Master', 18, 8),

-- ÑÔÊå 19: Biology - Molecular (MajorID=19, DepartmentID=9)
(N'Cell Biology', 'BIO101', 4, N'Theory', N'Bachelor', 19, 9),
(N'Molecular Genetics', 'BIO102', 3, N'Theory', N'Bachelor', 19, 9),
(N'Biochemistry2', 'BIO103', 3, N'Theory', N'Bachelor', 19, 9),
(N'Immunology', 'BIO104', 2, N'Theory', N'Bachelor', 19, 9),
(N'Genomics', 'BIO105', 3, N'Theory', N'Bachelor', 19, 9),

-- ÑÔÊå 20: Biology - Genetics (MajorID=20, DepartmentID=9)
(N'Genetic Engineering', 'BIO201', 4, N'Master', N'Master', 20, 9),
(N'Population Genetics', 'BIO202', 3, N'Theory', N'Master', 20, 9),
(N'Epigenetics', 'BIO203', 3, N'Theory', N'Master', 20, 9),
(N'Gene Therapy', 'BIO204', 2, N'Theory', N'Master', 20, 9),
(N'Molecular Diagnostics', 'BIO205', 3, N'Theory', N'Master', 20, 9),

-- ÑÔÊå 21: Persian Literature (MajorID=21, DepartmentID=10)
(N'Persian Poetry', 'PL101', 4, N'Theory', N'Bachelor', 21, 10),
(N'Classical Literature', 'PL102', 3, N'Theory', N'Bachelor', 21, 10),
(N'Modern Literature', 'PL103', 3, N'Theory', N'Bachelor', 21, 10),
(N'Persian Prose', 'PL104', 2, N'Theory', N'Bachelor', 21, 10),
(N'Literary Criticism2', 'PL105', 3, N'Theory', N'Bachelor', 21, 10),

-- ÑÔÊå 22: Law - General (MajorID=22, DepartmentID=11)
(N'Constitutional Law', 'LAW101', 3, N'Theory', N'Bachelor', 22, 11),
(N'Criminal Law', 'LAW102', 4, N'Theory', N'Bachelor', 22, 11),
(N'Civil Law', 'LAW103', 3, N'Theory', N'Bachelor', 22, 11),
(N'Contract Law', 'LAW104', 2, N'Theory', N'Bachelor', 22, 11),
(N'International Law Basics', 'LAW105', 3, N'Theory', N'Bachelor', 22, 11),

-- ÑÔÊå 23: Law - International (MajorID=23, DepartmentID=11)
(N'International Law', 'LAW201', 3, N'Master', N'Master', 23, 11),
(N'Human Rights Law', 'LAW202', 3, N'Theory', N'Master', 23, 11),
(N'International Trade Law', 'LAW203', 3, N'Theory', N'Master', 23, 11),
(N'International Dispute Resolution', 'LAW204', 2, N'Theory', N'Master', 23, 11),
(N'Comparative Law', 'LAW205', 3, N'Theory', N'Master', 23, 11),

-- ÑÔÊå 24: Political Science - Public Policy (MajorID=24, DepartmentID=12)
(N'Public Policy', 'POL101', 3, N'Theory', N'Bachelor', 24, 12),
(N'Political Theory', 'POL102', 3, N'Theory', N'Bachelor', 24, 12),
(N'International Relations', 'POL103', 3, N'Theory', N'Bachelor', 24, 12),
(N'Policy Analysis', 'POL104', 2, N'Theory', N'Bachelor', 24, 12),
(N'Governance', 'POL105', 3, N'Theory', N'Bachelor', 24, 12),

-- ÑÔÊå 25: Management - Industrial (MajorID=25, DepartmentID=13)
(N'Operations Management', 'MGT101', 3, N'Theory', N'Bachelor', 25, 13),
(N'Supply Chain Management', 'MGT102', 3, N'Theory', N'Bachelor', 25, 13),
(N'Quality Control', 'MGT103', 2, N'Theory', N'Bachelor', 25, 13),
(N'Production Planning', 'MGT104', 3, N'Theory', N'Bachelor', 25, 13),
(N'Industrial Safety', 'MGT105', 2, N'Theory', N'Bachelor', 25, 13),

-- ÑÔÊå 26: Management - Financial (MajorID=26, DepartmentID=13)
(N'Financial Management', 'MGT201', 3, N'Theory', N'Master', 26, 13),
(N'Investment Analysis', 'MGT202', 3, N'Theory', N'Master', 26, 13),
(N'Risk Management2', 'MGT203', 3, N'Theory', N'Master', 26, 13),
(N'Corporate Finance', 'MGT204', 2, N'Theory', N'Master', 26, 13),
(N'Portfolio Management', 'MGT205', 3, N'Theory', N'Master', 26, 13),

-- ÑÔÊå 27: Psychology - Clinical (MajorID=27, DepartmentID=14)
(N'Clinical Psychology', 'PSY101', 3, N'Theory', N'Bachelor', 27, 14),
(N'Psychopathology', 'PSY102', 3, N'Theory', N'Bachelor', 27, 14),
(N'Therapeutic Techniques', 'PSY103', 2, N'Practical', N'Bachelor', 27, 14),
(N'Neuropsychology', 'PSY104', 3, N'Theory', N'Bachelor', 27, 14),
(N'Child Psychology', 'PSY105', 3, N'Theory', N'Bachelor', 27, 14),

-- ÑÔÊå 28: Psychology - Educational (MajorID=28, DepartmentID=14)
(N'Educational Psychology', 'PSY201', 3, N'Theory', N'Master', 28, 14),
(N'Learning Theories', 'PSY202', 3, N'Theory', N'Master', 28, 14),
(N'Developmental Psychology', 'PSY203', 3, N'Theory', N'Master', 28, 14),
(N'Assessment Techniques', 'PSY204', 2, N'Practical', N'Master', 28, 14),
(N'Counseling', 'PSY205', 3, N'Theory', N'Master', 28, 14),

-- ÑÔÊå 29: English Language and Literature (MajorID=29, DepartmentID=15)
(N'English Literature', 'ENG101', 4, N'Theory', N'Bachelor', 29, 15),
(N'English Grammar', 'ENG102', 3, N'Theory', N'Bachelor', 29, 15),
(N'Literary Criticism', 'ENG103', 3, N'Theory', N'Bachelor', 29, 15),
(N'Creative Writing', 'ENG104', 2, N'Theory', N'Bachelor', 29, 15),
(N'Translation Studies', 'ENG105', 3, N'Theory', N'Bachelor', 29, 15),

-- ÑÔÊå 30: English Language Teaching (MajorID=30, DepartmentID=15)
(N'Language Teaching Methods', 'ENG201', 3, N'Theory', N'Master', 30, 15),
(N'Curriculum Design', 'ENG202', 3, N'Theory', N'Master', 30, 15),
(N'Teaching Practicum', 'ENG203', 2, N'Practical', N'Master', 30, 15),
(N'Assessment in Language Teaching', 'ENG204', 3, N'Theory', N'Master', 30, 15),
(N'Second Language Acquisition', 'ENG205', 3, N'Theory', N'Master', 30, 15);
GO
