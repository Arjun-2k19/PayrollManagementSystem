use ArjunHarshit;

CREATE TABLE employee (
  id int NOT NULL,
  firstName varchar(100) NOT NULL,
  lastName varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  password text NOT NULL,
  birthday date NOT NULL,
  gender varchar(10) NOT NULL,
  contact varchar(20) NOT NULL,
  address varchar(100) DEFAULT NULL,
  dept varchar(100) NOT NULL,
  degree varchar(100) NOT NULL,
  pic text NOT NULL
) ;

CREATE TABLE alogin (
  id int NOT NULL,
  email varchar(100) NOT NULL,
 password text NOT NULL
);

INSERT INTO employee (id, firstName, lastName, emaiL,password,birthday, gender, contact,address, dept, degree, pic) VALUES
(101, 'Mehadi', 'Hassan', 'mehadi@xyz.corp','5678','1994-04-04','Male', '0191954545', 'Alambagh', 'IT', 'PhD', 'images/no.jpg'),
(102, 'Sachin', 'Pilot', 'sachinpilot@gmail.com','5678','2018-01-01', 'Male', '0202454545', 'Ameenabad', 'CSE', 'Btech', 'images/no.jpg'),
(103, 'Arjun', 'Prajapati', 'arjun@xyz.corp','5678',  '1990-02-02', 'Male', '5252454545', 'Hazratganj', 'EC', 'MSc', 'images/sw-google.png'),
(104, 'Yash', 'Shivhare', 'yash@xyz.corp','5678', '1971-12-01', 'Male', '9595565656',  'Indira Nagar', 'EI', 'MSc', 'images/test.jpg'),
(105, 'Mayank', 'Singh', 'mayank@spacex.com','5678', '1971-06-28', 'Male', '8585323232', 'Gomti Nagar', 'CHE', 'BSc', 'images/330px-Elon_Musk_Royal_Society.jpg'),
(106, 'Tushar', 'Jha', 'Tushar@xyz.corp','5678',  '1990-02-02', 'Male', '7575545454',  'Sarojani Nagar', 'EI', 'MSc', 'images/hacker.png'),
(107, 'Kushagra ', 'Bansal', 'kb@xyz.corp','5678', '1993-03-03', 'Female', '4545858585',  'Dindayal Chauraha', 'ME', 'MS', 'images/no.jpg'),
(108, 'Nikhil', ' Gupta', 'ng@xyz.corp','5678', '1976-04-16', 'Male', '7587585642',  'Engineering Chauraha', 'CE', 'PhD', 'images/download.jpeg'),
(109, 'Naveen', 'Sinha', 'ns@xyz.corp','5678', '1985-01-01', 'Male', '8528524562',  'Polytechnic chauraha', 'EE', 'PhD', 'images/1-5.jpg'),
(110, 'Alok', 'Trivedi', 'at@xyz.corp','5678','1965-09-18', 'Male', '1471473256',  'Tedhi Pulia', 'EC', 'PhD', 'images/download (1).jpeg'),
(111, 'Harshit', 'Singh', 'hs@xyz.corp','5678', '2011-02-01', 'Male', '01872825623', 'Munshi Pulia', 'MCA', 'BSc.', 'images/jon-snow.jpg');


SELECT 
  *
FROM
 information_schema.tables;

--leave

CREATE TABLE employee_leave(
  id int DEFAULT NULL,
  token int NOT NULL,
  start date DEFAULT NULL,
  till date DEFAULT NULL,
  reason char(100) DEFAULT NULL,
  status char(50) DEFAULT NULL
) ;

INSERT INTO employee_leave (id, token, start, till, reason, status) VALUES
(101, 301, '2019-04-07', '2019-04-08', 'Sick Leave', 'Approved'),
(102, 305, '2019-04-07', '2019-04-08', 'Urgent Family Cause', 'Approved'),
(103, 306, '2019-04-08', '2019-04-08', 'Concert Tour', 'Approved'),
(101, 307, '2019-04-14', '2019-04-30', 'Want to see Luknow zoo', 'Pending'),
(105, 308, '2019-04-26', '2019-04-30', 'brothers wedding', 'Pending'),
(111, 309, '2019-04-09', '2019-04-13', 'Visit to lohiya park', 'Pending'),
(104, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending');


CREATE TABLE project (
  pid int NOT NULL,
  eid int DEFAULT NULL,
  pname varchar(100) DEFAULT NULL,
  duedate date DEFAULT NULL,
  subdate date DEFAULT   NULL,
  mark int NOT NULL,
  status varchar(50) DEFAULT NULL
) ;

INSERT INTO project(pid, eid, pname, duedate, subdate, mark, status) VALUES
(213, 101, 'Database', '2019-04-07', '2019-04-04', 10, 'Submitted'),
(214, 102, 'Test', '2019-04-10', '', 0, 'Due'),
(215, 105, 'Power system', '2019-04-19', '2019-04-06', 10, 'Submitted'),
(216, 106, 'Hack', '2019-05-04', '2019-04-05', 5, 'Submitted'),
(217, 111, 'Do Nothing', '2019-04-02', '2019-04-01', 8, 'Submitted'),
(218, 105, 'Compiler Design', '2019-04-03', '2019-04-03', 10, 'Submitted'),
(219, 101, 'PHP', '2019-04-07', '', 0, 'Due'),
(220, 110, 'Data Analysis', '2019-04-16', '2019-04-04', 8, 'Submitted'),
(221, 110, 'Data Analysis', '2019-04-16', '2019-04-04', 7, 'Submitted'),
(222, 103, 'Statistical', '2019-04-19', '2019-04-04', 6, 'Submitted'),
(223, 108, 'Software Scema', '2019-04-09', '2019-04-02', 3, 'Submitted'),
(224, 107, 'Security Check', '2019-04-26', '2019-04-05', 9, 'Submitted'),
(225, 109, 'ML', '2019-04-03', '2019-04-04', 6, 'Submitted');


--RANK

CREATE TABLE rank (
  eid int NOT NULL,
  points int DEFAULT '0'
) ;


INSERT INTO rank (eid, points) VALUES
(101, 10),
(102, 0),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 9),
(108, 3),
(109, 6),
(110, 15),
(111, 8);

CREATE TABLE salary (
  id int NOT NULL,
  base int NOT NULL,
  bonus int DEFAULT NULL,
  total int DEFAULT NULL
);


INSERT INTO salary(id,base, bonus, total) VALUES
(101, 55000, 10, 60500),
(102, 16500, 0, 16500),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 9, 83930),
(108, 50000, 3, 51500),
(109, 85000, 6, 90100),
(110, 47000, 15, 54050),
(111, 45000, 8, 48600);


ALTER TABLE alogin
  ADD PRIMARY KEY (id);

ALTER TABLE employee
  ADD PRIMARY KEY (id),
  ADD UNIQUE (email);


  ALTER TABLE employee_leave
  ADD PRIMARY KEY (token),
  ADD KEY employee_leave (pid);

ALTER TABLE project
  MODIFY pid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
ALTER TABLE rank
  ADD CONSTRAINT rank_ FOREIGN KEY (eid) REFERENCES employee (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE salary
  ADD CONSTRAINT salary FOREIGN KEY (id) REFERENCES employee(id) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
