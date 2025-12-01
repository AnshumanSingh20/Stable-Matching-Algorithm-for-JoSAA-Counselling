INSERT INTO college (id, code, name) VALUES
(1, 'IITB', 'Indian Institute of Technology Bombay'),
(2, 'IITD', 'Indian Institute of Technology Delhi'),
(3, 'IITM', 'Indian Institute of Technology Madras'),
(4, 'IITK', 'Indian Institute of Technology Kanpur'),
(5, 'IITKGP', 'Indian Institute of Technology Kharagpur'),
(6, 'IITG', 'Indian Institute of Technology Guwahati'),
(7, 'IITR', 'Indian Institute of Technology Roorkee'),
(8, 'IITH', 'Indian Institute of Technology Hyderabad'),
(9, 'IITI', 'Indian Institute of Technology Indore'),
(10,'IITP', 'Indian Institute of Technology Patna'),

(11,'NITT', 'National Institute of Technology Tiruchirappalli'),
(12,'NITS', 'National Institute of Technology Surathkal'),
(13,'NITW', 'National Institute of Technology Warangal'),
(14,'MNIT', 'Malaviya National Institute of Technology Jaipur'),
(15,'VNIT', 'Visvesvaraya National Institute of Technology Nagpur'),
(16,'SVNIT','Sardar Vallabhbhai National Institute of Technology Surat'),
(17,'NITC', 'National Institute of Technology Calicut'),
(18,'NITJ', 'Dr. B. R. Ambedkar National Institute of Technology Jalandhar'),
(19,'NITD', 'National Institute of Technology Durgapur'),
(20,'NITR', 'National Institute of Technology Rourkela');

-- IIT BOMBAY (college_id = 1)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(1, 'CSE', 44, 1),
(2, 'EE', 44, 1),
(3, 'ME', 44, 1),
(4, 'CE', 44, 1),
(5, 'CHE', 44, 1);

-- IIT DELHI (2)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(6, 'CSE', 44, 2),
(7, 'EE', 44, 2),
(8, 'ME', 44, 2),
(9, 'CE', 44, 2),
(10, 'CHE', 44, 2);

-- IIT MADRAS (3)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(11, 'CSE', 44, 3),
(12, 'EE', 44, 3),
(13, 'ME', 44, 3),
(14, 'CE', 44, 3),
(15, 'CHE', 44, 3);

-- IIT KANPUR (4)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(16, 'CSE', 44, 4),
(17, 'EE', 44, 4),
(18, 'ME', 44, 4),
(19, 'CE', 44, 4),
(20, 'CHE', 44, 4);

-- IIT KHARAGPUR (5)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(21, 'CSE', 44, 5),
(22, 'EE', 44, 5),
(23, 'ME', 44, 5),
(24, 'CE', 44, 5),
(25, 'CHE', 44, 5);

-- IIT GUWAHATI (6)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(26, 'CSE', 44, 6),
(27, 'EE', 44, 6),
(28, 'ME', 44, 6),
(29, 'CE', 44, 6),
(30, 'CHE', 44, 6);

-- IIT ROORKEE (7)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(31, 'CSE', 44, 7),
(32, 'EE', 44, 7),
(33, 'ME', 44, 7),
(34, 'CE', 44, 7),
(35, 'CHE', 44, 7);

-- IIT HYDERABAD (8)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(36, 'CSE', 44, 8),
(37, 'EE', 44, 8),
(38, 'ME', 44, 8),
(39, 'CE', 44, 8),
(40, 'CHE', 44, 8);

-- IIT INDORE (9)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(41, 'CSE', 44, 9),
(42, 'EE', 44, 9),
(43, 'ME', 44, 9),
(44, 'CE', 44, 9),
(45, 'CHE', 44, 9);

-- IIT PATNA (10)
INSERT INTO branch (id, name, capacity, college_id) VALUES
(46, 'CSE', 44, 10),
(47, 'EE', 44, 10),
(48, 'ME', 44, 10),
(49, 'CE', 44, 10),
(50, 'CHE', 44, 10);

-- NIT TRICHY (11)
INSERT INTO branch VALUES
(51, 'CSE', 44, 11),
(52, 'EE', 44, 11),
(53, 'ME', 44, 11),
(54, 'CE', 44, 11),
(55, 'CHE', 44, 11);

-- NIT SURATHKAL (12)
INSERT INTO branch VALUES
(56, 'CSE', 44, 12),
(57, 'EE', 44, 12),
(58, 'ME', 44, 12),
(59, 'CE', 44, 12),
(60, 'CHE', 44, 12);

-- NIT WARANGAL (13)
INSERT INTO branch VALUES
(61, 'CSE', 44, 13),
(62, 'EE', 44, 13),
(63, 'ME', 44, 13),
(64, 'CE', 44, 13),
(65, 'CHE', 44, 13);

-- MNIT JAIPUR (14)
INSERT INTO branch VALUES
(66, 'CSE', 44, 14),
(67, 'EE', 44, 14),
(68, 'ME', 44, 14),
(69, 'CE', 44, 14),
(70, 'CHE', 44, 14);

-- VNIT NAGPUR (15)
INSERT INTO branch VALUES
(71, 'CSE', 44, 15),
(72, 'EE', 44, 15),
(73, 'ME', 44, 15),
(74, 'CE', 44, 15),
(75, 'CHE', 44, 15);

-- SVNIT SURAT (16)
INSERT INTO branch VALUES
(76, 'CSE', 44, 16),
(77, 'EE', 44, 16),
(78, 'ME', 44, 16),
(79, 'CE', 44, 16),
(80, 'CHE', 44, 16);

-- NIT CALICUT (17)
INSERT INTO branch VALUES
(81, 'CSE', 44, 17),
(82, 'EE', 44, 17),
(83, 'ME', 44, 17),
(84, 'CE', 44, 17),
(85, 'CHE', 44, 17);

-- NIT JALANDHAR (18)
INSERT INTO branch VALUES
(86, 'CSE', 44, 18),
(87, 'EE', 44, 18),
(88, 'ME', 44, 18),
(89, 'CE', 44, 18),
(90, 'CHE', 44, 18);

-- NIT DURGAPUR (19)
INSERT INTO branch VALUES
(91, 'CSE', 44, 19),
(92, 'EE', 44, 19),
(93, 'ME', 44, 19),
(94, 'CE', 44, 19),
(95, 'CHE', 44, 19);

-- NIT ROURKELA (20)
INSERT INTO branch VALUES
(96, 'CSE', 44, 20),
(97, 'EE', 44, 20),
(98, 'ME', 44, 20),
(99, 'CE', 44, 20),
(100, 'CHE', 44, 20);

-- Branch 1
INSERT INTO seat_capacity (branch_id, category, seats) VALUES
(1, 'OPEN', 20), (1, 'OBC', 10), (1, 'EWS', 5), (1, 'SC', 6), (1, 'ST', 3);

-- Branch 2
INSERT INTO seat_capacity VALUES
(2, 'OPEN', 20), (2, 'OBC', 10), (2, 'EWS', 5), (2, 'SC', 6), (2, 'ST', 3);

-- Branch 3
INSERT INTO seat_capacity VALUES
(3, 'OPEN', 20), (3, 'OBC', 10), (3, 'EWS', 5), (3, 'SC', 6), (3, 'ST', 3);

-- Branch 4
INSERT INTO seat_capacity VALUES
(4, 'OPEN', 20), (4, 'OBC', 10), (4, 'EWS', 5), (4, 'SC', 6), (4, 'ST', 3);

-- Branch 5
INSERT INTO seat_capacity VALUES
(5, 'OPEN', 20), (5, 'OBC', 10), (5, 'EWS', 5), (5, 'SC', 6), (5, 'ST', 3);

-- Branch 6
INSERT INTO seat_capacity (branch_id, category, seats) VALUES
(6, 'OPEN', 20), (6, 'OBC', 10), (6, 'EWS', 5), (6, 'SC', 6), (6, 'ST', 3);

-- Branch 7
INSERT INTO seat_capacity VALUES
(7, 'OPEN', 20), (7, 'OBC', 10), (7, 'EWS', 5), (7, 'SC', 6), (7, 'ST', 3);

-- Branch 8
INSERT INTO seat_capacity VALUES
(8, 'OPEN', 20), (8, 'OBC', 10), (8, 'EWS', 5), (8, 'SC', 6), (8, 'ST', 3);

-- Branch 9
INSERT INTO seat_capacity VALUES
(9, 'OPEN', 20), (9, 'OBC', 10), (9, 'EWS', 5), (9, 'SC', 6), (9, 'ST', 3);

-- Branch 10
INSERT INTO seat_capacity VALUES
(10, 'OPEN', 20), (10, 'OBC', 10), (10, 'EWS', 5), (10, 'SC', 6), (10, 'ST', 3);

-- Branch 11
INSERT INTO seat_capacity VALUES
(11, 'OPEN', 20), (11, 'OBC', 10), (11, 'EWS', 5), (11, 'SC', 6), (11, 'ST', 3);

-- Branch 12
INSERT INTO seat_capacity VALUES
(12, 'OPEN', 20), (12, 'OBC', 10), (12, 'EWS', 5), (12, 'SC', 6), (12, 'ST', 3);

-- Branch 13
INSERT INTO seat_capacity VALUES
(13, 'OPEN', 20), (13, 'OBC', 10), (13, 'EWS', 5), (13, 'SC', 6), (13, 'ST', 3);

-- Branch 14
INSERT INTO seat_capacity VALUES
(14, 'OPEN', 20), (14, 'OBC', 10), (14, 'EWS', 5), (14, 'SC', 6), (14, 'ST', 3);

-- Branch 15
INSERT INTO seat_capacity VALUES
(15, 'OPEN', 20), (15, 'OBC', 10), (15, 'EWS', 5), (15, 'SC', 6), (15, 'ST', 3);

-- Branch 16
INSERT INTO seat_capacity VALUES
(16, 'OPEN', 20), (16, 'OBC', 10), (16, 'EWS', 5), (16, 'SC', 6), (16, 'ST', 3);

-- Branch 17
INSERT INTO seat_capacity VALUES
(17, 'OPEN', 20), (17, 'OBC', 10), (17, 'EWS', 5), (17, 'SC', 6), (17, 'ST', 3);

-- Branch 18
INSERT INTO seat_capacity VALUES
(18, 'OPEN', 20), (18, 'OBC', 10), (18, 'EWS', 5), (18, 'SC', 6), (18, 'ST', 3);

-- Branch 19
INSERT INTO seat_capacity VALUES
(19, 'OPEN', 20), (19, 'OBC', 10), (19, 'EWS', 5), (19, 'SC', 6), (19, 'ST', 3);

-- Branch 20
INSERT INTO seat_capacity VALUES
(20, 'OPEN', 20), (20, 'OBC', 10), (20, 'EWS', 5), (20, 'SC', 6), (20, 'ST', 3);

-- Branch 21
INSERT INTO seat_capacity VALUES
(21, 'OPEN', 20), (21, 'OBC', 10), (21, 'EWS', 5), (21, 'SC', 6), (21, 'ST', 3);

-- Branch 22
INSERT INTO seat_capacity VALUES
(22, 'OPEN', 20), (22, 'OBC', 10), (22, 'EWS', 5), (22, 'SC', 6), (22, 'ST', 3);

-- Branch 23
INSERT INTO seat_capacity VALUES
(23, 'OPEN', 20), (23, 'OBC', 10), (23, 'EWS', 5), (23, 'SC', 6), (23, 'ST', 3);

-- Branch 24
INSERT INTO seat_capacity VALUES
(24, 'OPEN', 20), (24, 'OBC', 10), (24, 'EWS', 5), (24, 'SC', 6), (24, 'ST', 3);

-- Branch 25
INSERT INTO seat_capacity VALUES
(25, 'OPEN', 20), (25, 'OBC', 10), (25, 'EWS', 5), (25, 'SC', 6), (25, 'ST', 3);

-- Branch 26
INSERT INTO seat_capacity VALUES
(26, 'OPEN', 20), (26, 'OBC', 10), (26, 'EWS', 5), (26, 'SC', 6), (26, 'ST', 3);

-- Branch 27
INSERT INTO seat_capacity VALUES
(27, 'OPEN', 20), (27, 'OBC', 10), (27, 'EWS', 5), (27, 'SC', 6), (27, 'ST', 3);

-- Branch 28
INSERT INTO seat_capacity VALUES
(28, 'OPEN', 20), (28, 'OBC', 10), (28, 'EWS', 5), (28, 'SC', 6), (28, 'ST', 3);

-- Branch 29
INSERT INTO seat_capacity VALUES
(29, 'OPEN', 20), (29, 'OBC', 10), (29, 'EWS', 5), (29, 'SC', 6), (29, 'ST', 3);

-- Branch 30
INSERT INTO seat_capacity VALUES
(30, 'OPEN', 20), (30, 'OBC', 10), (30, 'EWS', 5), (30, 'SC', 6), (30, 'ST', 3);

-- Branch 31
INSERT INTO seat_capacity VALUES
(31, 'OPEN', 20), (31, 'OBC', 10), (31, 'EWS', 5), (31, 'SC', 6), (31, 'ST', 3);

-- Branch 32
INSERT INTO seat_capacity VALUES
(32, 'OPEN', 20), (32, 'OBC', 10), (32, 'EWS', 5), (32, 'SC', 6), (32, 'ST', 3);

-- Branch 33
INSERT INTO seat_capacity VALUES
(33, 'OPEN', 20), (33, 'OBC', 10), (33, 'EWS', 5), (33, 'SC', 6), (33, 'ST', 3);

-- Branch 34
INSERT INTO seat_capacity VALUES
(34, 'OPEN', 20), (34, 'OBC', 10), (34, 'EWS', 5), (34, 'SC', 6), (34, 'ST', 3);

-- Branch 35
INSERT INTO seat_capacity VALUES
(35, 'OPEN', 20), (35, 'OBC', 10), (35, 'EWS', 5), (35, 'SC', 6), (35, 'ST', 3);

-- Branch 36
INSERT INTO seat_capacity VALUES
(36, 'OPEN', 20), (36, 'OBC', 10), (36, 'EWS', 5), (36, 'SC', 6), (36, 'ST', 3);

-- Branch 37
INSERT INTO seat_capacity VALUES
(37, 'OPEN', 20), (37, 'OBC', 10), (37, 'EWS', 5), (37, 'SC', 6), (37, 'ST', 3);

-- Branch 38
INSERT INTO seat_capacity VALUES
(38, 'OPEN', 20), (38, 'OBC', 10), (38, 'EWS', 5), (38, 'SC', 6), (38, 'ST', 3);

-- Branch 39
INSERT INTO seat_capacity VALUES
(39, 'OPEN', 20), (39, 'OBC', 10), (39, 'EWS', 5), (39, 'SC', 6), (39, 'ST', 3);

-- Branch 40
INSERT INTO seat_capacity VALUES
(40, 'OPEN', 20), (40, 'OBC', 10), (40, 'EWS', 5), (40, 'SC', 6), (40, 'ST', 3);

-- Branch 41
INSERT INTO seat_capacity VALUES
(41, 'OPEN', 20), (41, 'OBC', 10), (41, 'EWS', 5), (41, 'SC', 6), (41, 'ST', 3);

-- Branch 42
INSERT INTO seat_capacity VALUES
(42, 'OPEN', 20), (42, 'OBC', 10), (42, 'EWS', 5), (42, 'SC', 6), (42, 'ST', 3);

-- Branch 43
INSERT INTO seat_capacity VALUES
(43, 'OPEN', 20), (43, 'OBC', 10), (43, 'EWS', 5), (43, 'SC', 6), (43, 'ST', 3);

-- Branch 44
INSERT INTO seat_capacity VALUES
(44, 'OPEN', 20), (44, 'OBC', 10), (44, 'EWS', 5), (44, 'SC', 6), (44, 'ST', 3);

-- Branch 45
INSERT INTO seat_capacity VALUES
(45, 'OPEN', 20), (45, 'OBC', 10), (45, 'EWS', 5), (45, 'SC', 6), (45, 'ST', 3);

-- Branch 46
INSERT INTO seat_capacity VALUES
(46, 'OPEN', 20), (46, 'OBC', 10), (46, 'EWS', 5), (46, 'SC', 6), (46, 'ST', 3);

-- Branch 47
INSERT INTO seat_capacity VALUES
(47, 'OPEN', 20), (47, 'OBC', 10), (47, 'EWS', 5), (47, 'SC', 6), (47, 'ST', 3);

-- Branch 48
INSERT INTO seat_capacity VALUES
(48, 'OPEN', 20), (48, 'OBC', 10), (48, 'EWS', 5), (48, 'SC', 6), (48, 'ST', 3);

-- Branch 49
INSERT INTO seat_capacity VALUES
(49, 'OPEN', 20), (49, 'OBC', 10), (49, 'EWS', 5), (49, 'SC', 6), (49, 'ST', 3);

-- Branch 50
INSERT INTO seat_capacity VALUES
(50, 'OPEN', 20), (50, 'OBC', 10), (50, 'EWS', 5), (50, 'SC', 6), (50, 'ST', 3);

-- Branch 51
INSERT INTO seat_capacity VALUES
(51, 'OPEN', 20), (51, 'OBC', 10), (51, 'EWS', 5), (51, 'SC', 6), (51, 'ST', 3);

-- Branch 52
INSERT INTO seat_capacity VALUES
(52, 'OPEN', 20), (52, 'OBC', 10), (52, 'EWS', 5), (52, 'SC', 6), (52, 'ST', 3);

-- Branch 53
INSERT INTO seat_capacity VALUES
(53, 'OPEN', 20), (53, 'OBC', 10), (53, 'EWS', 5), (53, 'SC', 6), (53, 'ST', 3);

-- Branch 54
INSERT INTO seat_capacity VALUES
(54, 'OPEN', 20), (54, 'OBC', 10), (54, 'EWS', 5), (54, 'SC', 6), (54, 'ST', 3);

-- Branch 55
INSERT INTO seat_capacity VALUES
(55, 'OPEN', 20), (55, 'OBC', 10), (55, 'EWS', 5), (55, 'SC', 6), (55, 'ST', 3);

-- Branch 56
INSERT INTO seat_capacity VALUES
(56, 'OPEN', 20), (56, 'OBC', 10), (56, 'EWS', 5), (56, 'SC', 6), (56, 'ST', 3);

-- Branch 57
INSERT INTO seat_capacity VALUES
(57, 'OPEN', 20), (57, 'OBC', 10), (57, 'EWS', 5), (57, 'SC', 6), (57, 'ST', 3);

-- Branch 58
INSERT INTO seat_capacity VALUES
(58, 'OPEN', 20), (58, 'OBC', 10), (58, 'EWS', 5), (58, 'SC', 6), (58, 'ST', 3);

-- Branch 59
INSERT INTO seat_capacity VALUES
(59, 'OPEN', 20), (59, 'OBC', 10), (59, 'EWS', 5), (59, 'SC', 6), (59, 'ST', 3);

-- Branch 60
INSERT INTO seat_capacity VALUES
(60, 'OPEN', 20), (60, 'OBC', 10), (60, 'EWS', 5), (60, 'SC', 6), (60, 'ST', 3);

-- Branch 61
INSERT INTO seat_capacity VALUES
(61, 'OPEN', 20), (61, 'OBC', 10), (61, 'EWS', 5), (61, 'SC', 6), (61, 'ST', 3);

-- Branch 62
INSERT INTO seat_capacity VALUES
(62, 'OPEN', 20), (62, 'OBC', 10), (62, 'EWS', 5), (62, 'SC', 6), (62, 'ST', 3);

-- Branch 63
INSERT INTO seat_capacity VALUES
(63, 'OPEN', 20), (63, 'OBC', 10), (63, 'EWS', 5), (63, 'SC', 6), (63, 'ST', 3);

-- Branch 64
INSERT INTO seat_capacity VALUES
(64, 'OPEN', 20), (64, 'OBC', 10), (64, 'EWS', 5), (64, 'SC', 6), (64, 'ST', 3);

-- Branch 65
INSERT INTO seat_capacity VALUES
(65, 'OPEN', 20), (65, 'OBC', 10), (65, 'EWS', 5), (65, 'SC', 6), (65, 'ST', 3);

-- Branch 66
INSERT INTO seat_capacity VALUES
(66, 'OPEN', 20), (66, 'OBC', 10), (66, 'EWS', 5), (66, 'SC', 6), (66, 'ST', 3);

-- Branch 67
INSERT INTO seat_capacity VALUES
(67, 'OPEN', 20), (67, 'OBC', 10), (67, 'EWS', 5), (67, 'SC', 6), (67, 'ST', 3);

-- Branch 68
INSERT INTO seat_capacity VALUES
(68, 'OPEN', 20), (68, 'OBC', 10), (68, 'EWS', 5), (68, 'SC', 6), (68, 'ST', 3);

-- Branch 69
INSERT INTO seat_capacity VALUES
(69, 'OPEN', 20), (69, 'OBC', 10), (69, 'EWS', 5), (69, 'SC', 6), (69, 'ST', 3);

-- Branch 70
INSERT INTO seat_capacity VALUES
(70, 'OPEN', 20), (70, 'OBC', 10), (70, 'EWS', 5), (70, 'SC', 6), (70, 'ST', 3);

-- Branch 71
INSERT INTO seat_capacity VALUES
(71, 'OPEN', 20), (71, 'OBC', 10), (71, 'EWS', 5), (71, 'SC', 6), (71, 'ST', 3);

-- Branch 72
INSERT INTO seat_capacity VALUES
(72, 'OPEN', 20), (72, 'OBC', 10), (72, 'EWS', 5), (72, 'SC', 6), (72, 'ST', 3);

-- Branch 73
INSERT INTO seat_capacity VALUES
(73, 'OPEN', 20), (73, 'OBC', 10), (73, 'EWS', 5), (73, 'SC', 6), (73, 'ST', 3);

-- Branch 74
INSERT INTO seat_capacity VALUES
(74, 'OPEN', 20), (74, 'OBC', 10), (74, 'EWS', 5), (74, 'SC', 6), (74, 'ST', 3);

-- Branch 75
INSERT INTO seat_capacity VALUES
(75, 'OPEN', 20), (75, 'OBC', 10), (75, 'EWS', 5), (75, 'SC', 6), (75, 'ST', 3);

-- Branch 76
INSERT INTO seat_capacity VALUES
(76, 'OPEN', 20), (76, 'OBC', 10), (76, 'EWS', 5), (76, 'SC', 6), (76, 'ST', 3);

-- Branch 77
INSERT INTO seat_capacity VALUES
(77, 'OPEN', 20), (77, 'OBC', 10), (77, 'EWS', 5), (77, 'SC', 6), (77, 'ST', 3);

-- Branch 78
INSERT INTO seat_capacity VALUES
(78, 'OPEN', 20), (78, 'OBC', 10), (78, 'EWS', 5), (78, 'SC', 6), (78, 'ST', 3);

-- Branch 79
INSERT INTO seat_capacity VALUES
(79, 'OPEN', 20), (79, 'OBC', 10), (79, 'EWS', 5), (79, 'SC', 6), (79, 'ST', 3);

-- Branch 80
INSERT INTO seat_capacity VALUES
(80, 'OPEN', 20), (80, 'OBC', 10), (80, 'EWS', 5), (80, 'SC', 6), (80, 'ST', 3);

-- Branch 81
INSERT INTO seat_capacity VALUES
(81, 'OPEN', 20), (81, 'OBC', 10), (81, 'EWS', 5), (81, 'SC', 6), (81, 'ST', 3);

-- Branch 82
INSERT INTO seat_capacity VALUES
(82, 'OPEN', 20), (82, 'OBC', 10), (82, 'EWS', 5), (82, 'SC', 6), (82, 'ST', 3);

-- Branch 83
INSERT INTO seat_capacity VALUES
(83, 'OPEN', 20), (83, 'OBC', 10), (83, 'EWS', 5), (83, 'SC', 6), (83, 'ST', 3);

-- Branch 84
INSERT INTO seat_capacity VALUES
(84, 'OPEN', 20), (84, 'OBC', 10), (84, 'EWS', 5), (84, 'SC', 6), (84, 'ST', 3);

-- Branch 85
INSERT INTO seat_capacity VALUES
(85, 'OPEN', 20), (85, 'OBC', 10), (85, 'EWS', 5), (85, 'SC', 6), (85, 'ST', 3);

-- Branch 86
INSERT INTO seat_capacity VALUES
(86, 'OPEN', 20), (86, 'OBC', 10), (86, 'EWS', 5), (86, 'SC', 6), (86, 'ST', 3);

-- Branch 87
INSERT INTO seat_capacity VALUES
(87, 'OPEN', 20), (87, 'OBC', 10), (87, 'EWS', 5), (87, 'SC', 6), (87, 'ST', 3);

-- Branch 88
INSERT INTO seat_capacity VALUES
(88, 'OPEN', 20), (88, 'OBC', 10), (88, 'EWS', 5), (88, 'SC', 6), (88, 'ST', 3);

-- Branch 89
INSERT INTO seat_capacity VALUES
(89, 'OPEN', 20), (89, 'OBC', 10), (89, 'EWS', 5), (89, 'SC', 6), (89, 'ST', 3);

-- Branch 90
INSERT INTO seat_capacity VALUES
(90, 'OPEN', 20), (90, 'OBC', 10), (90, 'EWS', 5), (90, 'SC', 6), (90, 'ST', 3);

-- Branch 91
INSERT INTO seat_capacity VALUES
(91, 'OPEN', 20), (91, 'OBC', 10), (91, 'EWS', 5), (91, 'SC', 6), (91, 'ST', 3);

-- Branch 92
INSERT INTO seat_capacity VALUES
(92, 'OPEN', 20), (92, 'OBC', 10), (92, 'EWS', 5), (92, 'SC', 6), (92, 'ST', 3);

-- Branch 93
INSERT INTO seat_capacity VALUES
(93, 'OPEN', 20), (93, 'OBC', 10), (93, 'EWS', 5), (93, 'SC', 6), (93, 'ST', 3);

-- Branch 94
INSERT INTO seat_capacity VALUES
(94, 'OPEN', 20), (94, 'OBC', 10), (94, 'EWS', 5), (94, 'SC', 6), (94, 'ST', 3);

-- Branch 95
INSERT INTO seat_capacity VALUES
(95, 'OPEN', 20), (95, 'OBC', 10), (95, 'EWS', 5), (95, 'SC', 6), (95, 'ST', 3);

-- Branch 96
INSERT INTO seat_capacity VALUES
(96, 'OPEN', 20), (96, 'OBC', 10), (96, 'EWS', 5), (96, 'SC', 6), (96, 'ST', 3);

-- Branch 97
INSERT INTO seat_capacity VALUES
(97, 'OPEN', 20), (97, 'OBC', 10), (97, 'EWS', 5), (97, 'SC', 6), (97, 'ST', 3);

-- Branch 98
INSERT INTO seat_capacity VALUES
(98, 'OPEN', 20), (98, 'OBC', 10), (98, 'EWS', 5), (98, 'SC', 6), (98, 'ST', 3);

-- Branch 99
INSERT INTO seat_capacity VALUES
(99, 'OPEN', 20), (99, 'OBC', 10), (99, 'EWS', 5), (99, 'SC', 6), (99, 'ST', 3);

-- Branch 100
INSERT INTO seat_capacity VALUES
(100, 'OPEN', 20), (100, 'OBC', 10), (100, 'EWS', 5), (100, 'SC', 6), (100, 'ST', 3);

-- ============================
-- INSERT 20 REALISTIC CANDIDATES
-- ============================

INSERT INTO candidate (id, application_id, name, rank, category, gender, home_state, pwd) VALUES
(1, 'APP2025001', 'Arjun Mehta', 1520, 'OPEN', 'GN', 'MH', FALSE),
(2, 'APP2025002', 'Riya Sharma', 1790, 'OPEN', 'F', 'DL', FALSE),
(3, 'APP2025003', 'Siddharth Verma', 2105, 'OBC', 'GN', 'UP', FALSE),
(4, 'APP2025004', 'Ananya Sen', 2400, 'EWS', 'F', 'WB', FALSE),
(5, 'APP2025005', 'Pranav Deshpande', 2650, 'OPEN', 'GN', 'MH', FALSE),
(6, 'APP2025006', 'Kartik Raghavan', 3120, 'OBC', 'GN', 'KA', FALSE),
(7, 'APP2025007', 'Meera Iyer', 3550, 'SC', 'F', 'TN', FALSE),
(8, 'APP2025008', 'Harsh Patel', 3890, 'OPEN', 'GN', 'GJ', FALSE),
(9, 'APP2025009', 'Aditya Khanna', 4105, 'OPEN', 'GN', 'HR', FALSE),
(10, 'APP2025010', 'Tanvi Joshi', 4520, 'OBC', 'F', 'RJ', FALSE),
(11, 'APP2025011', 'Nikhil Rao', 4785, 'OPEN', 'GN', 'TS', FALSE),
(12, 'APP2025012', 'Ishita Kapoor', 4990, 'EWS', 'F', 'PB', FALSE),
(13, 'APP2025013', 'Vikas Yadav', 5120, 'OBC', 'GN', 'UP', FALSE),
(14, 'APP2025014', 'Rohan Mukherjee', 5380, 'OPEN', 'GN', 'WB', FALSE),
(15, 'APP2025015', 'Shruti Bhatia', 5650, 'SC', 'F', 'DL', FALSE),
(16, 'APP2025016', 'Aman Singh', 5900, 'ST', 'GN', 'CG', FALSE),
(17, 'APP2025017', 'Dhruv Nair', 6180, 'OPEN', 'GN', 'KL', FALSE),
(18, 'APP2025018', 'Kabir Malhotra', 6420, 'OBC', 'GN', 'UK', FALSE),
(19, 'APP2025019', 'Prem Chauhan', 6710, 'OPEN', 'GN', 'HP', FALSE),
(20, 'APP2025020', 'Simran Kaur', 6990, 'EWS', 'F', 'PB', FALSE);

-- ============================
-- CANDIDATE 1 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(1, 14, 1),
(1, 33, 2),
(1, 5, 3),
(1, 48, 4),
(1, 27, 5),
(1, 62, 6),
(1, 9, 7),
(1, 71, 8),
(1, 44, 9),
(1, 52, 10),
(1, 19, 11),
(1, 87, 12),
(1, 36, 13),
(1, 58, 14),
(1, 3, 15),
(1, 69, 16),
(1, 11, 17),
(1, 95, 18),
(1, 22, 19),
(1, 80, 20);

-- ============================
-- CANDIDATE 2 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(2, 7, 1),
(2, 41, 2),
(2, 16, 3),
(2, 73, 4),
(2, 94, 5),
(2, 55, 6),
(2, 26, 7),
(2, 63, 8),
(2, 89, 9),
(2, 38, 10),
(2, 13, 11),
(2, 50, 12),
(2, 78, 13),
(2, 29, 14),
(2, 92, 15),
(2, 44, 16),
(2, 10, 17),
(2, 67, 18),
(2, 84, 19),
(2, 32, 20);

-- ============================
-- CANDIDATE 3 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(3, 4, 1),
(3, 21, 2),
(3, 72, 3),
(3, 47, 4),
(3, 14, 5),
(3, 83, 6),
(3, 57, 7),
(3, 31, 8),
(3, 98, 9),
(3, 6, 10),
(3, 76, 11),
(3, 53, 12),
(3, 12, 13),
(3, 91, 14),
(3, 34, 15),
(3, 65, 16),
(3, 42, 17),
(3, 8, 18),
(3, 99, 19),
(3, 25, 20);

-- ============================
-- CANDIDATE 4 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(4, 33, 1),
(4, 5, 2),
(4, 84, 3),
(4, 19, 4),
(4, 62, 5),
(4, 44, 6),
(4, 2, 7),
(4, 77, 8),
(4, 90, 9),
(4, 14, 10),
(4, 52, 11),
(4, 27, 12),
(4, 6, 13),
(4, 69, 14),
(4, 99, 15),
(4, 8, 16),
(4, 56, 17),
(4, 35, 18),
(4, 73, 19),
(4, 41, 20);

-- ============================
-- CANDIDATE 5 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(5, 17, 1),
(5, 82, 2),
(5, 40, 3),
(5, 64, 4),
(5, 9, 5),
(5, 23, 6),
(5, 79, 7),
(5, 14, 8),
(5, 51, 9),
(5, 3, 10),
(5, 66, 11),
(5, 90, 12),
(5, 36, 13),
(5, 58, 14),
(5, 11, 15),
(5, 72, 16),
(5, 93, 17),
(5, 28, 18),
(5, 6, 19),
(5, 100, 20);
-- ============================
-- CANDIDATE 6 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(6, 12, 1),
(6, 45, 2),
(6, 73, 3),
(6, 8, 4),
(6, 31, 5),
(6, 97, 6),
(6, 22, 7),
(6, 60, 8),
(6, 14, 9),
(6, 56, 10),
(6, 37, 11),
(6, 89, 12),
(6, 4, 13),
(6, 79, 14),
(6, 63, 15),
(6, 27, 16),
(6, 50, 17),
(6, 92, 18),
(6, 18, 19),
(6, 71, 20);

-- ============================
-- CANDIDATE 7 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(7, 5, 1),
(7, 82, 2),
(7, 34, 3),
(7, 9, 4),
(7, 40, 5),
(7, 73, 6),
(7, 16, 7),
(7, 92, 8),
(7, 57, 9),
(7, 13, 10),
(7, 45, 11),
(7, 67, 12),
(7, 21, 13),
(7, 94, 14),
(7, 70, 15),
(7, 31, 16),
(7, 2, 17),
(7, 64, 18),
(7, 19, 19),
(7, 85, 20);

-- ============================
-- CANDIDATE 8 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(8, 14, 1),
(8, 51, 2),
(8, 23, 3),
(8, 76, 4),
(8, 36, 5),
(8, 7, 6),
(8, 98, 7),
(8, 42, 8),
(8, 29, 9),
(8, 63, 10),
(8, 11, 11),
(8, 87, 12),
(8, 55, 13),
(8, 20, 14),
(8, 69, 15),
(8, 94, 16),
(8, 5, 17),
(8, 83, 18),
(8, 41, 19),
(8, 30, 20);

-- ============================
-- CANDIDATE 9 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(9, 62, 1),
(9, 18, 2),
(9, 44, 3),
(9, 7, 4),
(9, 73, 5),
(9, 12, 6),
(9, 98, 7),
(9, 35, 8),
(9, 82, 9),
(9, 3, 10),
(9, 56, 11),
(9, 24, 12),
(9, 69, 13),
(9, 40, 14),
(9, 15, 15),
(9, 52, 16),
(9, 91, 17),
(9, 64, 18),
(9, 26, 19),
(9, 9, 20);

-- ============================
-- CANDIDATE 10 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(10, 17, 1),
(10, 94, 2),
(10, 45, 3),
(10, 31, 4),
(10, 2, 5),
(10, 59, 6),
(10, 81, 7),
(10, 12, 8),
(10, 36, 9),
(10, 78, 10),
(10, 24, 11),
(10, 66, 12),
(10, 9, 13),
(10, 55, 14),
(10, 40, 15),
(10, 14, 16),
(10, 72, 17),
(10, 68, 18),
(10, 99, 19),
(10, 23, 20);
-- ============================
-- CANDIDATE 11 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(11, 44, 1),
(11, 13, 2),
(11, 67, 3),
(11, 89, 4),
(11, 23, 5),
(11, 72, 6),
(11, 31, 7),
(11, 97, 8),
(11, 6, 9),
(11, 55, 10),
(11, 82, 11),
(11, 40, 12),
(11, 20, 13),
(11, 63, 14),
(11, 91, 15),
(11, 2, 16),
(11, 48, 17),
(11, 76, 18),
(11, 15, 19),
(11, 58, 20);

-- ============================
-- CANDIDATE 12 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(12, 5, 1),
(12, 84, 2),
(12, 39, 3),
(12, 92, 4),
(12, 26, 5),
(12, 60, 6),
(12, 11, 7),
(12, 75, 8),
(12, 53, 9),
(12, 19, 10),
(12, 64, 11),
(12, 36, 12),
(12, 28, 13),
(12, 88, 14),
(12, 72, 15),
(12, 4, 16),
(12, 51, 17),
(12, 97, 18),
(12, 15, 19),
(12, 67, 20);

-- ============================
-- CANDIDATE 13 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(13, 8, 1),
(13, 52, 2),
(13, 21, 3),
(13, 99, 4),
(13, 45, 5),
(13, 13, 6),
(13, 28, 7),
(13, 67, 8),
(13, 35, 9),
(13, 14, 10),
(13, 84, 11),
(13, 5, 12),
(13, 92, 13),
(13, 60, 14),
(13, 41, 15),
(13, 73, 16),
(13, 97, 17),
(13, 20, 18),
(13, 31, 19),
(13, 6, 20);

-- ============================
-- CANDIDATE 14 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(14, 31, 1),
(14, 94, 2),
(14, 20, 3),
(14, 48, 4),
(14, 63, 5),
(14, 12, 6),
(14, 77, 7),
(14, 54, 8),
(14, 8, 9),
(14, 39, 10),
(14, 95, 11),
(14, 14, 12),
(14, 69, 13),
(14, 27, 14),
(14, 51, 15),
(14, 1, 16),
(14, 72, 17),
(14, 34, 18),
(14, 82, 19),
(14, 23, 20);

-- ============================
-- CANDIDATE 15 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(15, 17, 1),
(15, 40, 2),
(15, 62, 3),
(15, 11, 4),
(15, 89, 5),
(15, 93, 6),
(15, 56, 7),
(15, 14, 8),
(15, 75, 9),
(15, 23, 10),
(15, 71, 11),
(15, 4, 12),
(15, 98, 13),
(15, 33, 14),
(15, 57, 15),
(15, 6, 16),
(15, 81, 17),
(15, 49, 18),
(15, 29, 19),
(15, 68, 20);

-- ============================
-- CANDIDATE 16 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(16, 88, 1),
(16, 60, 2),
(16, 24, 3),
(16, 53, 4),
(16, 17, 5),
(16, 11, 6),
(16, 35, 7),
(16, 74, 8),
(16, 4, 9),
(16, 92, 10),
(16, 66, 11),
(16, 29, 12),
(16, 40, 13),
(16, 95, 14),
(16, 21, 15),
(16, 7, 16),
(16, 84, 17),
(16, 56, 18),
(16, 37, 19),
(16, 14, 20);

-- ============================
-- CANDIDATE 17 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(17, 33, 1),
(17, 5, 2),
(17, 92, 3),
(17, 19, 4),
(17, 73, 5),
(17, 47, 6),
(17, 20, 7),
(17, 88, 8),
(17, 68, 9),
(17, 52, 10),
(17, 14, 11),
(17, 81, 12),
(17, 64, 13),
(17, 4, 14),
(17, 96, 15),
(17, 11, 16),
(17, 32, 17),
(17, 59, 18),
(17, 26, 19),
(17, 41, 20);

-- ============================
-- CANDIDATE 18 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(18, 12, 1),
(18, 30, 2),
(18, 48, 3),
(18, 59, 4),
(18, 84, 5),
(18, 16, 6),
(18, 75, 7),
(18, 4, 8),
(18, 33, 9),
(18, 62, 10),
(18, 27, 11),
(18, 99, 12),
(18, 51, 13),
(18, 71, 14),
(18, 43, 15),
(18, 24, 16),
(18, 96, 17),
(18, 15, 18),
(18, 58, 19),
(18, 8, 20);

-- ============================
-- CANDIDATE 19 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(19, 3, 1),
(19, 42, 2),
(19, 77, 3),
(19, 16, 4),
(19, 84, 5),
(19, 23, 6),
(19, 63, 7),
(19, 5, 8),
(19, 91, 9),
(19, 37, 10),
(19, 72, 11),
(19, 49, 12),
(19, 14, 13),
(19, 98, 14),
(19, 28, 15),
(19, 67, 16),
(19, 58, 17),
(19, 8, 18),
(19, 33, 19),
(19, 60, 20);

-- ============================
-- CANDIDATE 20 PREFERENCES
-- ============================
INSERT INTO preference (candidate_id, branch_id, priority) VALUES
(20, 61, 1),
(20, 14, 2),
(20, 79, 3),
(20, 37, 4),
(20, 11, 5),
(20, 92, 6),
(20, 48, 7),
(20, 5, 8),
(20, 84, 9),
(20, 29, 10),
(20, 70, 11),
(20, 62, 12),
(20, 13, 13),
(20, 4, 14),
(20, 97, 15),
(20, 55, 16),
(20, 21, 17),
(20, 36, 18),
(20, 99, 19),
(20, 1, 20);
