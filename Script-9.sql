

create function gdate (@date Date)
returns varchar(20)
BEGIN
declare @get_date varchar(10)
set @get_date =
case
when(Datepart(month,(@date))) = 01 then 'April'
when(Datepart(month,(@date))) = 02 then 'May'
when(Datepart(month,(@date))) = 03 then 'June'
when(Datepart(month,(@date))) = 04 then 'July'
when(Datepart(month,(@date))) = 05 then 'August'
when(Datepart(month,(@date))) = 06 then 'September'
when(Datepart(month,(@date))) = 07 then 'Octomber'
when(Datepart(month,(@date))) = 08 then 'November'
when(Datepart(month,(@date))) = 09 then 'December'
when(Datepart(month,(@date))) = 10 then 'January'
when(Datepart(month,(@date))) = 11 then 'February'
when(Datepart(month,(@date))) = 12 then 'March'
else 'Enter Valid Date'
end
return @get_date
end

select dbo.gdate('2022-10-24')

create function invst(@ip int)
returns int
BEGIN
declare @in_stock int
set @in_stock = isnull((select inventory_id from inventory as i where i.inventory_id 
= @ip),0)
return @in_stock
end

select dbo.invst(51) as checking_stocks;

CREATE TRIGGER tr_del_film_text
ON film_text
AFTER DELETE
AS
BEGIN
    DELETE f
    FROM film f
    INNER JOIN deleted d ON d.film_id = f.film_id
END;

create view list
as
select customer_id , first_name 
from customer
where first_name IS NOT NULL
and customer_id > 71

select * from list

CREATE PROCEDURE get_available_film_count
    @film_id int,
    @store_id int
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @available_count int;

    SELECT @available_count = COUNT(*)
    FROM inventory i
    JOIN film f ON i.film_id = f.film_id
    LEFT JOIN rental r ON i.inventory_id = r.inventory_id AND r.return_date IS NULL
    WHERE i.film_id = @film_id
    AND i.store_id = @store_id
    AND r.rental_id IS NULL;

    SELECT @available_count AS available_count;
END


EXEC get_available_film_count @film_id = 101, @store_id = 12;







