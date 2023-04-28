-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
																		-- Insert value for buyers -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

insert into Provider(Pid, Pname, Paddress, Pdate) values (1, 'Vissan', '45 Phu Tho province', '2023-04-30');
insert into Provider(Pid, Pname, Paddress, Pdate) values (2, 'Uniqlo', '25 distric 9 Thu Duc', '2023-05-10');
insert into Provider(Pid, Pname, Paddress, Pdate) values (3, 'McCormick', 'Thu Dau 1  Binh Duong', '2023-06-7');
insert into Provider(Pid, Pname, Paddress, Pdate) values (4, 'Coca_cola', '81 Nguyen Du street distric 1', '2023-07-7');
insert into Provider(Pid, Pname, Paddress, Pdate) values (5, 'Enchanteur', '25 Nguyen Ha Ki', '2023-08-12');
insert into Provider(Pid, Pname, Paddress, Pdate) values (6, 'LaFonte', '22 Le Quy Don', '2023-09-18');
insert into Provider(Pid, Pname, Paddress, Pdate) values (7, 'GKitchen', '154/B Ly Thuong Kiet', '2023-09-27');
insert into Provider(Pid, Pname, Paddress, Pdate) values (8, 'DaLatGAP', '30 Nguyen Chu Trinh', '2023-10-5');
insert into Provider(Pid, Pname, Paddress, Pdate) values (9, 'Co_op', '29 Vo Thi Sau', '2023-11-29');
insert into Provider(Pid, Pname, Paddress, Pdate) values (10, 'Pepsico', '30 Hai Ba Trung', '2023-12-14');

-- insert into Provider(Pid, Pname, Paddress, Pdate) values (1, 'Vissan', '45 Phu Tho province', to_date('2023-04-30','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (2, 'Uniqlo', '25 distric 9 Thu Duc', to_date('2023-05-10','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (3, 'McCormick', '25 distric 9 Thu Duc', to_date('2023-06-7','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (4, 'Coca_cola', '25 distric 9 Thu Duc', to_date('2023-07-7','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (5, 'Enchanteur', '25 distric 9 Thu Duc', to_date('2023-08-12','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (6, 'LaFonte', '25 distric 9 Thu Duc', to_date('2023-09-18','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (7, 'GKitchen', '25 distric 9 Thu Duc', to_date('2023-09-27','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (8, 'DaLatGAP', '25 distric 9 Thu Duc', to_date('2023-10-5','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (9, 'Co_op', '25 distric 9 Thu Duc', to_date('2023-11-29','YYYY-MM-DD'));
-- insert into Provider(Pid, Pname, Paddress, Pdate) values (10, 'Pepsico', '25 distric 9 Thu Duc', to_date('2023-12-14','YYYY-MM-DD'));
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
																		-- Insert value for ItemList-- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

insert into ItemList(Iid, Iname, category, quantity, Pid) values (1, 'mayonnaise tuna', 'canned food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (2, 'mayonnaise chicken', 'canned food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (3, 'Beef paste', 'canned food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (4, 'Pork liver paste', 'canned food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (5, 'vegan spring rolls', 'frozen food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (6, 'seafood spring rolls', 'frozen food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (7, 'marinated pork cutlet', 'frozen food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (8, 'honey baby-back ribs', 'frozen food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (9, 'dumplings', 'frozen food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (10, 'wontons', 'frozen food', 100, 1);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (11, 't-shirt', 'clothe', 100, 2);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (12, 'tank top', 'clothe', 100, 2);
insert into ItemList(Iid, Iname, category, quantity, Pid) values (13, 'polo shirt', 'clothe', 100, 2);





-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
																			-- insert value for STOCK -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 



insert into stock(item_Id, item_name, category, amount, cost, price) values (1, 'mayonnaise tuna','canned food', 500, 15, 25);
insert into stock(item_Id, item_name, category, amount, cost, price) values (2, 'mayonnaise chicken','canned food', 500, 15, 25);
insert into stock(item_Id, item_name, category, amount, cost, price) values (3, 'Beef paste','canned food', 500, 20, 35);
insert into stock(item_Id, item_name, category, amount, cost, price) values (4, 'Pork liver paste','canned food', 500, 20, 30);
insert into stock(item_Id, item_name, category, amount, cost, price) values (5, 'vegan spring rolls','frozen food', 500, 10, 18);
insert into stock(item_Id, item_name, category, amount, cost, price) values (6, 'seafood spring rolls','frozen food', 500, 24, 38);
insert into stock(item_Id, item_name, category, amount, cost, price) values (7, 'marinated pork cutlet','frozen food', 500, 20, 28);
insert into stock(item_Id, item_name, category, amount, cost, price) values (8, 'honey baby-back ribs','frozen food', 500, 38, 50);
insert into stock(item_Id, item_name, category, amount, cost, price) values (9, 'dumplings','frozen food', 500, 8, 15);
insert into stock(item_Id, item_name, category, amount, cost, price) values (10, 'wontons','frozen food', 500, 5, 7.5);
insert into stock(item_Id, item_name, category, amount, cost, price) values (11, 't-shirt','clothe', 500, 50, 70);
insert into stock(item_Id, item_name, category, amount, cost, price) values (12, 'tank top','clothe', 500, 3.5, 25);
insert into stock(item_Id, item_name, category, amount, cost, price) values (13, 'polo shirt','clothe', 500, 50, 70);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (14, 'skirt','clothe', 500, 15, 50);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (15, 'dress','clothe', 500, 15, 60);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (16, 'vest','clothe', 500, 100, 220);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (17, 'jeans','clothe', 500, 35, 49);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (18, 'trousers','clothe', 500, 56, 100);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (19, 'hoodie','clothe', 500, 27, 60);
-- insert into stock(item_Id, item_name, category, amount, cost, price) values (20, 'coat','clothe', 500, 100, 200); 


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
																				-- Insert value for Customer -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (1, 'Nguyen Tien', '0909900991', '150A Hoang Van Thuan', 'polo shirt', 50);
insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (2, 'Nguyen Van A', '091522381', '60 Nguyen Trai', 'Beef paste', 130);
-- insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (3, 'Ly Ngoc Hoang', '0909900991', '25 Nguyen Van Hoa', 'vest', 100);
insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (4, 'Nguyen Kiet', '01122233', '32 Hai Ba Trung', 'polo shirt', 200);
insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (5, 'Ly Thai Tong', '0111222', '90 Thu Duc', 'dumplings', 150);
insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (6, 'Le Van Luong', '054545454', '15A Binh Thanh', 'polo shirt', 100);
insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (7, 'Huynh Duy Anh', '0909973742', '31 Ngoc Ha', 'mayonnaise tuna', 50);
-- insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (8, 'Nguyen Mai Que Chi', '0528900991', '5 Vo Thi Sau', 'skirt', 100);
insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (9, 'Ho Thai Anh', '0123900991', '43 Ho Van Tru', 'polo shirt', 100);
-- insert into customer(Customer_id, Customer_name, phone_number, Address, Item_name, Required_amount) values (10, 'Nguyen Mai', '0909945671', '32 Ly Thuong Kiet', 'dress', 130);


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
																				-- Insert value for ListOfPayment -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (1, 0, 0.0 );
insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (2, 0, 0.0 );
-- insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (3, 1, 0.0 );
insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (4, 0, 0.0 );
insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (5, 0, 0.0 );
insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (6, 0, 0.0 );
insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (7, 1, 0.0 );
-- insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (8, 0, 0.0 );
insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (9, 0, 0.0 );
-- insert into ListOfPayment(Customer_id, Money_paid, Money_pending) values (10, 1, 0.0 );
