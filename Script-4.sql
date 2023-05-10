--first attempt

create function cust_bal(@customer_id int, @date date)
returns integer
begin
declare @rental_fees int;
declare @over_due int;
declare @payments int;

set @rental_fees = (
select isnull(sum(rental_rate),0)
from film 
join inventory 
on inventory.film_id = film.film_id
join rental 
on rental.inventory_id = inventory.inventory_id
where rental_date <= @date
and customer_id = @customer_id
)
set @over_due = (
select coalesce(sum(case when ((DATEDIFF(day, rental.return_date,
rental.rental_date)) > film.rental_duration)
then
((DATEDIFF(day, rental.return_date,rental.rental_date)) - film.rental_duration) else 0 
end),0)
from film 
join inventory 
on inventory.film_id = film.film_id
join rental 
on rental.inventory_id = inventory.inventory_id
where rental_date <= @date
and customer_id = customer_id
)
set @payments = (
select isnull(sum(amount),0)
from payment 
where payment.payment_date <= @date
and payment.customer_id = @customer_id
)
return @rental_fees +@over_due -@payments
end

select dbo.cust_bal(72,'2022-04-12');