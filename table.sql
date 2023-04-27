-- -- 10 frist table provider
-- drop table vissan;
-- drop table uniqlo;
-- drop table mcCormick;
-- drop table coca_cola;
-- drop table enchanteur;
-- drop table laFonte;
-- drop table gKitchen;
-- drop table DaLatGAP;
-- drop table co_op;
-- drop table pepsico;
-- -- rest of the table
-- drop table Defaulters;
-- drop table ListOfPayment;
-- drop table Stock;
-- drop table Customer;


Create table vissan(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100), 
    CONSTRAINT PK_vissan PRIMARY KEY (Item_name)
);

Create table uniqlo(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
	Check (quantity >= 100), 
    CONSTRAINT PK_uniqlo PRIMARY KEY (Item_name)
);

Create table mcCormick(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),    
    Check (quantity >= 100), 
    CONSTRAINT PK_mcCormick PRIMARY KEY (Item_name)
);
Create table coca_cola(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_coca_cola PRIMARY KEY (Item_name)
);
Create table enchanteur(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_enchanteur PRIMARY KEY (Item_name)
);
Create table laFonte(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_laFonte PRIMARY KEY (Item_name)
);
Create table gKitchen(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_gKitchen PRIMARY KEY (Item_name)
);
Create table DaLatGAP(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_DaLatGAP PRIMARY KEY (Item_name)
);
Create table co_op(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_co_op PRIMARY KEY (Item_name)
);
Create table pepsico(
	Item_id integer not null,
	Address varchar(500) not null,
	Item_name varchar(100) not null,
    quantity integer not null,
    category varchar(30) not null,
	Provider_Date date not null,
    Check (Item_id > 0),
    Check (quantity >= 100),
    CONSTRAINT PK_pepsico PRIMARY KEY (Item_name)
);
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

CREATE TABLE Stock(
    item_Id integer not null,
    item_name varchar(100) not null,
    category varchar (100) not null,
    amount integer not null,
    cost double not null,
    price double not null,
    CHECK (item_Id>0),
	CONSTRAINT PK_Stock primary key (item_name)
   
);

CREATE TABLE Customer(
    Customer_id integer not null, 
    Customer_name varchar(30)NOT NULL,
    Address varchar(100)not null,
    Item_name varchar(30) not null,
    Required_amount integer not null,
    CHECK (Customer_id > 0),
    CONSTRAINT PK_Customer primary key (Customer_id)

);

CREATE TABLE ListOfPayment(
    Customer_id integer not null,
	Money_paid boolean not null,
    Money_pending double,
    Check (Customer_id > 0),
    CONSTRAINT fk_ListOfPayment FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
);

CREATE TABLE Defaulters(
     Defaulters_id integer not null,
     Money_pending double not null,
     Check (Defaulters_id > 0),
    CONSTRAINT fk_Defaulters_id FOREIGN KEY (Defaulters_id) REFERENCES Customer(Customer_id)
);




