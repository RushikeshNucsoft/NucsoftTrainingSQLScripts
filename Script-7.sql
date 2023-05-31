--rank function
select title,descripton,language_id,
RANK () OVER( ORDER BY descripton) AS RANK
From film
rownumber()
dense_rank()

--analytic function
select title,language_id,descripton,
FIRST_VALUE (title) OVER(PARTITION BY language_id ORDER BY title) AS FIRST_VALUE
FROM film;
last_value();
lead();
lag();

--group by function
select language_id, GROUPING(language_id) AS 'Grouping'
FROM film
Group by language_id WITH ROLLUP;
cube();

--Quarter function
create function Quarter(@date Date)
returns varchar(10)
begin
declare @ans varchar(10)
select @ans =
case
when(DATEPART(QUARTER,(@DATE))) = 1 then 'Quarter-4'
when(DATEPART(QUARTER,(@DATE))) = 2 then 'Quarter-1'
when(DATEPART(QUARTER,(@DATE))) = 3 then 'Quarter-2'
when(DATEPART(QUARTER,(@DATE))) = 4 then 'Quarter-3'
else 'Year'
end
return @ans
end


select dbo.Quarter('2008-05-09')





