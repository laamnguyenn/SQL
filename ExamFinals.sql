CREATE TABLE Department(
		DepartID INT PRIMARY KEY,
		DepartName varchar(50) NOT NULL,
		Descriptions varchar(100) NOT NULL
		)

INSERT INTO Department VALUES ('0001', 'AAA Department', 'Security and Protect')
INSERT INTO Department VALUES ('0002', 'BBB Department', 'Medication and Rescue')
INSERT INTO Department VALUES ('0003', 'CCC Department', 'News and Entertainment')
INSERT INTO Department VALUES ('0004', 'DDD Department', 'Producing and Restocking')

CREATE TABLE Employee(
		EmpCode char(6) PRIMARY KEY,
		FirstName varchar(30) NOT NULL,
		LastName varchar(30) NOT NULL,
		Birthday smalldatetime NOT NULL,
		Gender Bit Default 1,
		EmployeeAddress varchar(100),
		DepartID INT,
		Salary Money,
		FOREIGN KEY (DepartID) REFERENCES Department(DepartID)
		)

INSERT INTO Employee VALUES ('1111', 'Nguyen', 'Lam', '2003-05-16', 1,'118 X Street.', '0001', '5000000')
INSERT INTO Employee VALUES ('1112', 'Nguyen', 'Linh', '2002-01-16', 1,'120 A Street.', '0002', '50033000')
INSERT INTO Employee VALUES ('1113', 'Le', 'Long', '1999-03-16', 1,'199 A Street.', '0003', '9000000')
INSERT INTO Employee VALUES ('1114', 'Ember', 'Lanise', '1989-05-12', 1,'1854 X Street.', '0004', '13000000')

UPDATE Employee
SET Salary = Salary * 1.1

ALTER TABLE Employee
ADD CONSTRAINT CHK_Salary_GreaterThanZero CHECK (salary > 0);


DROP TABLE Employee
SELECT * FROM Department
SELECT * From Employee
