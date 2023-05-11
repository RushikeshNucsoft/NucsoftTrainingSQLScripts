

create trigger updated_film on film_text
AFTER update
as
begin
update film set title=ft.title from film_text ft
JOIN film f
on f.film_id = ft.film_id
END

update film_text 
set title='Bah'
where film_id = 101;

select * from film
select * from film_text

create view film_id_title AS
select film_id , title
from film
where film_id >= 90;

select * from film_id_title


create proc film_not_in_stock
@film_id2 int,
@store_id2 int
as
begin
begin try
begin transaction
select * from inventory 
where @film_id2 = inventory.film_id
and @store_id2 = inventory.store_id
commit transaction
end try
begin catch
print(error_message())
rollback transaction
end catch
end


film_not_in_stock 101, 12