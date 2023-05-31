create table film_category(
film_id int not null,
category_id int,
last_update date,
primary key(film_id,category_id),
)

insert into film_category values(101, 201, '2023-01-01'),
(102, 202, '2024-05-05')

select * from film_category


create table category(
category_id int not null,
name varchar(25),
last_update date,
primary key(category_id))

insert into category values (201,'SHOLEY','2023-01-01'),
(202,'YJHD','2024-05-05')

select * from category

create table language(language_id int,
name char(20),
last_update date,
primary key(language_id))

insert into language values(1, 'Hindi', '2000-11-09'),
(2, 'English', '2021-12-27')

select * from language

create table film(film_id int,
title varchar(255),
descripton varchar(255),
release_year date,
language_id int,
originial_lanuage_id int,
rental_duration int,
rental_rate int,
length int,
replacement_cost int,
rating int,
special_features varchar(256),
last_update date,
primary key(film_id),
foreign key (language_id) references language(language_id))

INSERT INTO film 
VALUES 
(103, 'RRR', 'Bolyywood Old Movie', CONVERT(DATE, '2020-05-02', 23), 1, 201, 4, 1000, 5, 50, 9, 'New Bollywood movie', CONVERT(DATETIME, '2023-01-01', 120)),
(102, 'YJHD', 'Bolyywood New Movie', CONVERT(DATE, '1956-05-05', 23), 1, 201, 4, 2000, 6, 50, 9, 'Full on Entertainment', CONVERT(DATETIME, '2023-01-01', 120));

select * from film

create table actor(actor_id int,
first_name varchar(20),
last_name varchar(20),
last_update date,
primary key(actor_id))

insert into actor values(3, 'NTR JR', 'RRR', '2020-05-02'),
(2, 'Ranveer', 'kapoor', '2010-12-27')

select * from actor

-- film_actor

create table film_actor(actor_id int,
film_id int,
last_update date,
primary key(actor_id,film_id))


insert into film_actor values(1, 101, '1999-11-09'),
(2, 102, '1995-12-27')

select * from film_actor

create table film_text(film_id int,
title varchar(40),
descrption varchar(255),
primary key(film_id))

insert into film_text values(101, 'Sholey', 'bollywood old movie'),
(102, 'YJHD', 'bollywood New movie')

select *from film_text

create table country(country_id int NOT NULL primary key , 
country_name varchar(50) ,
last_update Date);

insert into country values
('1','India','2023-04-23'),
('2','Germany','2023-12-28');

select * from country;

create table city(city_id int NOT NULL primary key ,
 city_name varchar(50) , 
country_id int FOREIGN KEY REFERENCES country(country_id),
last_update Date);

insert into city values(1,'mumbai',1,'2012-09-27'),
(2,'pune',2,'2005-12-22');

select * from city;

create table address(address_id int NOT NULL primary key, 
address varchar (50),
address2 varchar(50),
district varchar(20),
city_id int FOREIGN KEY REFERENCES city(city_id),
postal_code varchar(20),
phone varchar(10),
last_update Date
);

insert into address
values(1,'vishrambag','maighat','sangli','1','416412',9503765823,'2021-04-15');
insert into address values(2,'tikondi','vittal 
mandir','Tikondi','2','416412',7856214585,'2022-02-14');

select * from address;

create table store(store_id int NOT NULL primary key , 
address_id int FOREIGN KEY REFERENCES address(address_id),
last_update Date);

insert into store values(12,2,'2002-12-21');
insert into store values(16,1,'2003-12-12');

select * from store;

create table inventory (inventory_id int NOT NULL primary key,
film_id int FOREIGN KEY REFERENCES film(film_id),
store_id int FOREIGN KEY REFERENCES store(store_id),
last_update Date);

insert into inventory values(51,101,12,'2001-04-20'),
(52,102,16,'2003-09-02');

select * from inventory;

create table staff 
(staff_id int NOT NULL primary key ,
first_name varchar(10),
last_name varchar(10),
address_id int FOREIGN KEY REFERENCES address(address_id),
email varchar(10),
store_id int FOREIGN KEY REFERENCES store(store_id), 
active int, 
username varchar(10),
password varchar(10),
last_update Date);


insert into staff values
(501,'Abhishek','Hatti',1,'abhi@gmai',12,0,'tnj','pass','2001-04-12'),
(502,'Ajay','Hatti',2,'ajay@gmail',16,1,'abhi','Abhiew','2016-12-28');


select * from staff;

create table customer(customer_id int NOT NULL primary key , 
store_id int FOREIGN KEY REFERENCES store(store_id),
first_name varchar(20),
last_name varchar(20),
email varchar(10),
address_id int FOREIGN KEY REFERENCES address(address_id),
active int ,
create_date Date , 
last_update Date);

INSERT INTO customer 
VALUES 
(71, 12, 'kamal', 'sharma', 'kmal', 1, 0, '2005-08-21', '2007-12-24'),
(72, 16, 'komal', 'pande', 'kgmail', 2, 1, '2007-12-12', '2019-05-02');

select * from customer;

create table rental(rental_id int NOT NULL primary key, 
rental_date Date , 
inventory_id int FOREIGN KEY REFERENCES inventory(inventory_id),
customer_id int FOREIGN KEY REFERENCES customer(customer_id),
return_date Date , 
staff_id int FOREIGN KEY REFERENCES staff(staff_id),
last_update Date);

insert into rental values(81,'2011-01-02',51,71,'2002-08-16',501,'2016-12-24'),
(82,'2000-12-04',52,72,'2011-04-09',502,'2003-09-16');

select * from rental;

create table payment(payment_id int NOT NULL primary key, 
customer_id int FOREIGN KEY REFERENCES customer(customer_id),
staff_id int FOREIGN KEY REFERENCES staff(staff_id),
rental_id int FOREIGN KEY REFERENCES rental(rental_id),
amount int,
payment_date Date,
last_update Date
);

insert into payment values(201,71,501,81,6000,'2001-04-12','2002-04-22'),
(202,72,502,82,7000,'2003-09-23','2004-12-30');

select * from payment;

---------------------------------------------------------------------------------------------

select actor.first_name , film_actor.film_id 
from actor 
inner join film_actor on 
actor.actor_id = film_actor.actor_id;

select * from actor;
select * from film_actor;


SELECT *
FROM actor 
LEFT JOIN film_actor on 
actor.actor_id = film_actor.actor_id;


SELECT *
FROM actor 
RIGHT JOIN film_actor on 
actor.actor_id = film_actor.actor_id;

SELECT *
FROM actor 
FULL JOIN film_actor on 
actor.actor_id = film_actor.actor_id;

---------------------------------------------------------------------------------------------------------------------

CREATE FUNCTION test_amount (a DECIMAL)
RETURNS DECIMAL
BEGIN
    RETURN a;
END;


CREATE FUNCTION test_amount (@a DECIMAL)
RETURNS DECIMAL
AS
BEGIN
    RETURN @a;
END;

SELECT test_amount(select amount from payment where customer_id = 72)
SELECT dbo.test_amount((SELECT amount FROM payment WHERE customer_id = 72))

select rental_rate
from film 
join inventory 
on inventory.film_id = film.film_id
join rental 
on rental.inventory_id = inventory.inventory_id
where rental_date <= '2011-01-02'
and customer_id = 71

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

 cust_bal(71,'2011-01-02');
