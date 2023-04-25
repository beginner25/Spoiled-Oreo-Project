CREATE TABLE Stock(
	
    item_Id integer not null,
    item_Name varchar(10) not null,
    cost double not null,
    price double not null,
    profit int,
    CHECK (item_Id>0),
	CONSTRAINT PK_Stock primary key (item_Id)
    
);

SELECT item_Id, item_Name, price - cost as profit
FROM Stock;