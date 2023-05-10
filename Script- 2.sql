
CREATE TABLE Actor (
  actor_id SMALLINT PRIMARY KEY,
  first_name VARCHAR(45) NOT NULL,
  LastName VARCHAR(45) NOT NULL,
  last_update TIMESTAMP
);


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
