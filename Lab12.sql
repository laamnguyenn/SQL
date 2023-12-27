CREATE TABLE Employee(
	EmployeeID INT PRIMARY KEY NOT NULL,
	EmployeeName varchar(100),
	Tel char(11),
	Email varchar(30)
	)

	INSERT INTO Employee VALUES ( '0001', 'Phuc Lam', '00000001', 'npl166654@gmail.com')
	INSERT INTO Employee VALUES ( '0002', 'Lam Phuc', '00000002', 'lpdsd2333@gmail.com')
	INSERT INTO Employee VALUES ( '0003', 'Sandy', '0000003', 'sandyemman@gmail.com')
	SELECT * FROM Employee


CREATE TABLE Project(
	ProjectID INT PRIMARY KEY NOT NULL,
	ProjectName varchar(30),
	StartDate datetime,
	EndDate datetime,
	ProjectPeriod INT,
	Cost money,
)


CREATE TABLE Groups(
	GroupID INT PRIMARY KEY NOT NULL,
	GroupName varchar(30),
	LeaderID INT,
	ProjectID varchar(50),
	FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
	)
INSERT INTO Groups VALUES ('0001', 'Chinh Phu Dien Tu', '00000001', 'DA1')
INSERT INTO Groups VALUES ('0002', 'An Ninh Mang', '00000002', 'DA2')
INSERT INTO Groups VALUES ('0003', 'Phong Truyen Thong', '00000003', 'DA3')
DROP TABLE Groups
SELECT * FROM Groups

CREATE TABLE GroupDetail(
	GroupID INT,
	EmployeeID INT,
	EmployeeStatus char(20),
	FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
	)
