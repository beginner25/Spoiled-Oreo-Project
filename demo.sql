-- drop table Customer;
-- drop table Defaulters;
-- drop table ListOfPayment;
-- drop table Provider;
-- drop table Stock;

CREATE TABLE Customer(
    Customer_id integer not null, 
    Customer_name varchar(30)NOT NULL,
    Address varchar(100)not null,
    Item_name varchar(30) not null,
    Required_amount integer not null,
    CHECK (Customer_id > 0),
    CONSTRAINT PK_Customer primary key (Customer_id)

);
-- CREATE TABLE Defaulters(
--      Defaulters_id integer not null,
--      Money_pending double not null,
--      Check (Defaulters_id > 0),
--     CONSTRAINT fk_Defaulters FOREIGN KEY (Defaulters_id) REFERENCES Customer(Customer_id)
-- );
-- CREATE TABLE ListOfPayment(
--     Customer_id integer not null,
-- 	Money_paid boolean not null,
--     Money_pending double not null,
--     Check (Customer_id > 0),
--     CONSTRAINT fk_ListOfPayment FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
-- );

-- Create table Provider(
-- 	buyer_id integer not null,
-- 	Name varchar(150) not null,
-- 	Address varchar(500) not null,
-- 	Item_name varchar(30) not null,
--     quantity integer not null,
--     category varchar(30) not null,
-- 	Provider_Date date not null,
--     Check (buyer_id > 0),
--     Check (quantity > 0),
--     CONSTRAINT PK_Provider PRIMARY KEY (buyer_id)
-- );


CREATE TABLE Stock(
	
    item_Id integer not null,
    item_Name varchar(100) not null,
    cost double not null,
    price double not null,
    profit double,
    CHECK (item_Id>0),
	CONSTRAINT PK_Stock primary key (item_Id)
    
);



-- --     INSERT

-- -- Customer 

-- INSERT INTO Customer (Customer_id, Customer_name, Address, Item_name, Required_amount)
-- VALUES (1, 'Phan Quoc An', '30 Nguyen Chu Trinh', 'hammer', 5);
-- INSERT INTO Customer (Customer_id, Customer_name, Address, Item_name, Required_amount)
-- VALUES (2, 'Nguyen Tien', '25 Nguyen Ha Ki', 'Pipe', 15);
-- INSERT INTO Customer (Customer_id, Customer_name, Address, Item_name, Required_amount)
-- VALUES (3, 'Hoang Van Hau', '155/A Nguyen Trai', 'PC case', 1);
-- INSERT INTO Customer (Customer_id, Customer_name, Address, Item_name, Required_amount)
-- VALUES (4, 'Nguyen Van A', '154/B Ly Thuong Kiet', 'Iphone 13', 2);
-- INSERT INTO Customer (Customer_id, Customer_name, Address, Item_name, Required_amount)
-- VALUES (5, 'Nguyen Thi Hoa', '22 Le Quy Don', 'Condom packs', 10);

-- -- -- LisOfPayment

-- insert into ListOfPayment (Customer_id, Money_paid, Money_pending) Values (001, true, 0);
-- insert into ListOfPayment (Customer_id, Money_paid, Money_pending) Values (002, false, 250.20);
-- insert into ListOfPayment (Customer_id, Money_paid, Money_pending) Values (003, false, 300);
-- insert into ListOfPayment (Customer_id, Money_paid, Money_pending) Values (004, true, 0);
-- insert into ListOfPayment (Customer_id, Money_paid, Money_pending) Values (005, true, 0);

-- -- Defaulters

-- insert into Defaulters(Defaulters_id,  Money_pending) Values (001, 100.50);
-- insert into Defaulters(Defaulters_id, Money_pending) Values (002, 250.20);
-- insert into Defaulters(Defaulters_id, Money_pending) Values (003, 300);

-- -- Provider

-- insert into Provider (buyer_id, Name, Address, Item_name, quantity, category, Provider_Date) 
-- values (1, 'Vissan', '45 Phu Tho province', 'Beef in tomato sauce canned', 45, 'canned food', '2023-05-30');
-- insert into Provider (buyer_id, Name, Address, Item_name, quantity, category, Provider_Date) 
-- values (2, 'Vissan', '45 Phu Tho province', 'Fish tomato sauce canned', 100, 'canned food', '2023-05-30');
-- insert into Provider (buyer_id, Name, Address, Item_name, quantity, category, Provider_Date) 
-- values (3, 'Uniqlo', '25 distric 9 Thu Duc', 'T-shirt summer vibe', 100, 'cloth', '2023-10-25');
-- insert into Provider (buyer_id, Name, Address, Item_name, quantity, category, Provider_Date) 
-- values (4, 'Dai Nam', 'Thu Dau 1  Binh Duong', 'Asus Laptop', 45, 'laptop', '2023-05-30');
-- insert into Provider (buyer_id, Name, Address, Item_name, quantity, category, Provider_Date) 
-- values (5, 'Hp', '45 Phu Tho province', 'Accer Laptop', 45, 'laptop', '2023-05-30');

-- -- Stock
-- insert into stock (item_Id, item_Name, cost, price) values (1, 'T-shirt summer vibe', 15, 10);
-- insert into stock (item_Id, item_Name, cost, price) values (2, 'Fish tomato sauce canned', 20, 22);
-- insert into stock (item_Id, item_Name, cost, price) values (3, 'Beef in tomato sauce canned', 25, 30);




 

--       METHOD MERGE

-- merge Customer table and ListOfPayment table show true and false for money_paid
-- select t.Customer_id, t.Customer_name, t.Item_name, t.Required_amount,
-- (case 
-- when Money_paid = true
-- then 'paid'
-- else 'none'
-- end) as Money_paid, ti.Money_pending
-- from Customer as t JOIN ListOfPayment as ti on t.Customer_id = ti.Customer_id;

-- SELECT item_Id, item_Name, price - cost as profit
-- FROM Stock;
-- merge customer table to Defaulters table
-- select a.Customer_id, a.Customer_name, b.Money_pending from customer as a join Defaulters as b on a.Customer_id = b.Defaulters_id;
-- select *from Provider;
-- select *from Customer;
-- select *from Defaulters;
-- select *from listofpayment;
-- SELECT a.item_Id, a.item_Name, c. b.Required_amount, (price - cost) * Required_amount as profit from stock as a join Customer as b join Provider as c;
-- FROM Stock;