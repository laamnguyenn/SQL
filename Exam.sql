
CREATE TABLE Orders(
	OrdersID  INT,
	CustomerID INT,
	OrdersDate Date,
	Primary Key (OrdersID, CustomerID)
);

INSERT INTO  Orders VALUES ('1', '113', '2023-4-1')
INSERT INTO  Orders VALUES ('2', '114', '2023-5-7')

DROP TABLE Orders

SELECT * FROM Orders;

CREATE TABLE Customer(
	CustomerID INT,
	NameCus NVARCHAR(50),
	DiaChi NVARCHAR(100),
	Telephone nvarchar(12),
	FOREIGN KEY (CustomerID) REFERENCES Orders (CustomerID)
);


INSERT INTO  Customer VALUES ('113', 'Annie', 'HaNoi', '0123878')
INSERT INTO  Customer VALUES ('114', 'Johnny', 'HCMC', '01242278')

DROP TABLE Customer

SELECT * FROM Customer;

CREATE TABLE OrdersDetails(
	OrdersID  INT,
	ProductID INT,
	Price Money,
	Quantity INT,
	FOREIGN KEY (OrdersID) REFERENCES Orders(OderID),
	FOREIGN KEY (ProductID) REFERENCES Product(ProductID) 
);

INSERT INTO  OrdersDetails VALUES ('1', '001', '800', '1')
INSERT INTO  OrdersDetails VALUES ('2', '002', '1008', '2')


DROP TABLE OrdersDetails

SELECT * FROM OrdersDetails


CREATE TABLE Product(
	ProductID  INT PRIMARY KEY,
	NameProduct NVARCHAR(50),
	Unit NVARCHAR(10),
	Price Money,
	Quantity INT,
);

INSERT INTO  Product VALUES ('001', 'Quan ao ngu', 'chiec', '1000', '604')
INSERT INTO  Product VALUES ('002', 'Quan ao the thao', 'chiec', '2000', '123')

DROP TABLE Product

SELECT * FROM Product;