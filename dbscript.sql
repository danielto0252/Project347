create database DavesExpress;

use DavesExpress;

create table Users(
	User_Id INT NOT NULL auto_increment,
	FirstName VARCHAR(60) NOT NULL,
	LastName VARCHAR(60) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	PhoneNumber VARCHAR(15) NOT NULL,
	Username VARCHAR(25) NOT NULL,
	Password VARCHAR(32) NOT NULL,
	SecurityQuestion VARCHAR(100) NOT NULL,
	SecurityAnswer VARCHAR(50) NOT NULL,
	Primary Key(User_Id)
);

create table Menu(
	Food_Id INT NOT NULL auto_increment,
	FoodName VARCHAR(50) NOT NULL,
	UnitPrice DECIMAL(10,2) NOT NULL,
	Description VARCHAR(120),
	Primary Key(Food_Id)
);

create table Orders(
	Order_Id INT NOT NULL auto_increment,
	OrderNumber INT NOT NULL,
	User_Id INT NOT NULL,
	TotalPrice DECIMAL(10,2),
	Primay Key(OrderId),
	Foreign Key(User_Id) references Users(User_Id)
);

create table OrderDetail(
	Order_Id INT NOT NULL,
	Menu_Id INT NOT NULL,
	Quantity INT NOT NULL,
	Foreign Key(Order_Id) references Orders(Order_Id),
	Foreign Key(Menu_Id) references Menu(Menu_Id)
);