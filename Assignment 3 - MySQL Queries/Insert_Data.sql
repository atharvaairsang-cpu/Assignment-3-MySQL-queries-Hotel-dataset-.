use iauro;

INSERT INTO Hotel (Hotel_No, Name, City)
VALUES
('H111', 'Empire Hotel', 'New York'),
('H235', 'Park Place', 'New York'),
('H432', 'Brownstone Hotel', 'Toronto'),
('H498', 'James Plaza', 'Toronto'),
('H193', 'Devon Hotel', 'Boston'),
('H437', 'Clairmont Hotel', 'Boston');

INSERT INTO Room (Room_No, Hotel_No, Type, Price)
VALUES
(313,  'H111', 'S', 145.00),
(412,  'H111', 'N', 145.00),
(1267, 'H235', 'N', 175.00),
(1289, 'H235', 'N', 195.00),
(876,  'H432', 'S', 124.00),
(898,  'H432', 'S', 124.00),
(345,  'H498', 'N', 160.00),
(467,  'H498', 'N', 180.00),
(1001, 'H193', 'S', 150.00),
(1201, 'H193', 'N', 175.00),
(257,  'H437', 'N', 140.00),
(223,  'H437', 'N', 155.00);

INSERT INTO Guest (Guest_No, Name, City)
VALUES
('G256', 'Adam Wayne', 'Pittsburgh'),
('G367', 'Tara Cummings', 'Baltimore'),
('G879', 'Vanessa Parry', 'Pittsburgh'),
('G230', 'Tom Hancock', 'Philadelphia'),
('G467', 'Robert Swift', 'Atlanta'),
('G190', 'Edward Cane', 'Baltimore');

INSERT INTO Booking
    (Hotel_No, Guest_No, Date_From, Date_To, Room_No)
VALUES
('H111', 'G256', '1999-08-10', '1999-08-15', 412),
('H111', 'G367', '1999-08-18', '1999-08-21', 412),
('H235', 'G879', '1999-09-05', '1999-09-12', 1267),
('H498', 'G230', '1999-09-15', '1999-09-18', 467),
('H498', 'G256', '1999-11-30', '1999-12-02', 345),
('H498', 'G467', '1999-11-03', '1999-11-05', 345),
('H193', 'G190', '1999-11-15', '1999-11-19', 1001),
('H193', 'G367', '1999-09-12', '1999-09-14', 1001),
('H193', 'G367', '1999-10-01', '1999-10-06', 1201),
('H437', 'G190', '1999-10-04', '1999-10-06', 223),
('H437', 'G879', '1999-09-14', '1999-09-17', 223);