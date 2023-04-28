
-- --  table
drop table if exists Defaulters;
drop table if exists ListOfPayment;
drop table if exists Customer;
drop table if exists Stock;
drop table if exists ItemList;
drop table if exists Provider;



Create table Provider(
Pid integer not null,
Pname varchar(30) not null,
Paddress varchar(100) not null,
Pdate date not null,
check(Pid > 0),
CONSTRAINT PK_Provider primary key (Pid)
);

Create table ItemList(
Iid integer not null,
Iname varchar(30) not null,
category varchar(30) not null,
Quantity integer not null,
Pid integer not null,
Check(Iid > 0),
CHECK (Quantity >= 100),
CONSTRAINT PK_ItemList primary key (Iid),
CONSTRAINT Fk_ItemList FOREIGN KEY (Pid) REFERENCES Provider(Pid)
);
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

CREATE TABLE Stock(
    item_Id integer not null,
    item_name varchar(100) not null,
    category varchar (100) not null,
    amount integer not null,
    cost float not null,
    price float not null,
    CHECK (item_Id>0),
    CONSTRAINT PK_stock primary key (item_name),
    CONSTRAINT fk_Stock FOREIGN KEY (item_Id) REFERENCES ItemList(Iid)
   
);

CREATE TABLE Customer(
    Customer_id integer not null, 
    Customer_name varchar(30)NOT NULL,
	phone_number varchar(20) not null,
    Address varchar(100)not null,
    Item_name varchar(30) not null,
    Required_amount integer not null,
    CHECK (Customer_id > 0),
    CONSTRAINT PK_Customer primary key (Customer_id),
    CONSTRAINT fk_Customer FOREIGN KEY (Item_name) REFERENCES Stock(Item_name)

);

CREATE TABLE ListOfPayment(
    Customer_id integer not null,
	Money_paid integer not null,
    Money_pending float,
    Check (Customer_id > 0),
    CONSTRAINT fk_ListOfPayment FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
);

CREATE TABLE Defaulters(
     Defaulters_id integer not null,
     Money_pending float not null,
     Check (Defaulters_id > 0),
    CONSTRAINT fk_Defaulters_id FOREIGN KEY (Defaulters_id) REFERENCES Customer(Customer_id)
);




