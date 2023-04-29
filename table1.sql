drop table if exists purchase_status;
drop table if exists defaulters;
drop table if exists customer_purchaseInfo;
drop table if exists Item_List;
drop table if exists Customer;
drop table if exists category;

create table Purchase_status(
	id integer not null,
    status_name varchar(20),
    check (id > 0),
    Constraint pk_Purchase_status primary Key (id)
);

create table category(
	id integer not null,
    category_name varchar(200) not null,
    check (id > 0),
    Constraint pk_category primary Key (id)
);

Create table Customer(
	id integer not null,
    Customer_name varchar(200) not null,
    address varchar(200) not null,
    phone_number varchar(11) not null,
    check (id > 0),
    Constraint pk_customer primary Key (id)
);
    
Create table Item_List(
	id integer not null,
    provider_id integer not null,
    category_id integer not null,
    Item_name varchar(200),
    costPrice float not null,
    sellingPrice float not null,
    check (id > 0),
    Constraint pk_Item_List primary Key (id),
    Constraint fk_Iprovider_id foreign key (provider_id) references provider(id),
    Constraint fk_Icategory_id foreign key (category_id) references category(id)
);

Create table customer_purchaseInfo(
	id integer not null,
    Customer_id integer not null,
    purchase_date date,
    purchase_status integer not null,
    check (id > 0),
    Constraint pk_customer_purchaseInfo primary Key (id),
    Constraint fk_customer_purchaseInfo foreign key (Customer_id) references customer(id),
    Constraint fk_customer_purchase_status foreign key (purchase_status) references purchase_status(id)
);

Create table customer_purchaseDetail(
	CPI_id integer not null,
    item_id integer not null,
    price float not null,
    quantity integer not null,
    total_amount float not null,
    Constraint fk_customer_purchaseDetail foreign key (CPI_id) references customer_purchaseInfo(id),
    Constraint fk_customer_IpurchaseDetail foreign key (item_id) references Item_List(id)
);
    
create table defaulters(
	Customer_id integer,
    Customer_name varchar(200),
    Remain_amount float,
    Constraint fk_defaulters foreign key (Customer_id) references customer(id),
    Constraint fk_defaulters foreign key (Customer_name) references customer(Customer_name)
);



