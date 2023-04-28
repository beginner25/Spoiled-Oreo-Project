/*select *from vissan;
select *from uniqlo;
select *from mcCormick;
select *from coca_cola;
select *from enchanteur;
select *from laFonte;
select *from gKitchen;
select *from DaLatGAP;
select *from co_op;
select *from pepsico;*/
select *from Provider;
select *from ItemList;
select *from stock;
select *from Customer;
select *from Defaulters;

--  -- merge Customer table and ListOfPayment table show true and false for money_paid
select t.Customer_id, t.Customer_name, t.Item_name, t.Required_amount, (price*Required_amount) as total,
(case 
when Money_paid = 1
then 'paid'
else 'none'
end) as Money_paid,
(case 
when Money_paid = 1
then '0'
else (price*Required_amount)
end) as Money_pending
from Customer as t JOIN ListOfPayment as ti Join stock as i on t.Customer_id = ti.Customer_id and t.item_name = i.item_name;

select Item_name.Iid

-- select a.Customer_id, a.Customer_name, b.Money_pending from customer as a join Defaulters as b on a.Customer_id = b.Defaulters_id;
