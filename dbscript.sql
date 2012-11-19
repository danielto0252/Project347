create database DavesExpress;

use DavesExpress;

create table Users(
	User_Id INT NOT NULL auto_increment,
	FullName VARCHAR(60) NOT NULL,
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
	Price DECIMAL(10,2) NOT NULL,
	Primary Key(Food_Id)
);

create table Orders(
	OrderId INT NOT NULL auto_increment,
	OrderNumber INT NOT NULL,
	Food_Id INT NOT NULL,
	Primay Key(OrderId),
	Foreign Key(Food_Id) references Menu(Food_Id)
);

create table Delivery(
	User_Id INT NOT NULL,
	Address VARCHAR(100) NOT NULL,
	OrderNumber INT NOT NULL,
	TotalPrice DECIMAL(10,2) NOT NULL,
);