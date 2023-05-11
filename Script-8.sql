CREATE CLUSTERED INDEX f_in
on film(film_id ASC)

SELECT film_id from film where film_id =46;

CREATE NONCLUSTERED INDEX f_ncl
on film(title ASC)

select title from film where title = 'RRR';


--In SQL, a cursor is a database object used to traverse the records in a result set.
--It is a pointer that points to the current row in the result set, and you can use it to fetch one or more rows of data at a time.
Create PROC cust_full 
AS
BEGIN
Declare
@cust_id int,
@f_name varchar(20),
@l_name varchar(20),
@Full_name varchar(25)
Declare cust_cursor Cursor for Select customer_id,first_name,last_name
from customer
open cust_cursor
FETCH NEXT FROM cust_cursor INTO @cust_id , @f_name ,@l_name
while @@FETCH_STATUS = 0
Begin
print Concat('Customer-ID : ' , @cust_id);
SET @Full_name = @f_name+' '+@l_name;
print Concat('Full Name : ',@Full_name);
print('----------------');
FETCH NEXT FROM cust_cursor INTO @cust_id ,@f_name ,@l_name
END
close cust_cursor
Deallocate cust_cursor
END

exec cust_full