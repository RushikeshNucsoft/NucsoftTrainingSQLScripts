CREATE TABLE public.employees (
	id int8 NOT NULL,
	"name" varchar(255) NULL,
	age int4 NULL,
	email varchar(255) NULL,
	contact varchar(20) NULL,
	city varchar(255) NULL,
	CONSTRAINT employees_pkey PRIMARY KEY (id)
);


INSERT INTO public.employees (id, "name", age, email, contact, city)
VALUES
    (1, 'John Doe', 30, 'johndoe@example.com', '1234567890', 'New York'),
    (2, 'Jane Smith', 28, 'janesmith@example.com', '9876543210', 'Los Angeles'),
    (3, 'Michael Johnson', 35, 'michaeljohnson@example.com', '5555555555', 'Chicago'),
    (4, 'Emily Brown', 32, 'emilybrown@example.com', '9998887776', 'San Francisco'),
    (5, 'David Lee', 27, 'davidlee@example.com', '1112223334', 'Houston');

   
   BEGIN;
CREATE TABLE public.employees (
    id int8 PRIMARY key NOT NULL,
    "name" varchar(255) NULL,
    age int4 NULL,
    city varchar(255) NULL
);
COMMIT;

BEGIN;

INSERT INTO public.employees (id, "name", age, email, contact, city)
VALUES
    (1, 'John Doe', 30, 'johndoe@example.com', '1234567890', 'New York'),
    (2, 'Jane Smith', 28, 'janesmith@example.com', '9876543210', 'Los Angeles'),
    (3, 'Michael Johnson', 35, 'michaeljohnson@example.com', '5555555555', 'Chicago'),
    (4, 'Emily Brown', 32, 'emilybrown@example.com', '9998887776', 'San Francisco'),
    (5, 'David Lee', 27, 'davidlee@example.com', '1112223334', 'Houston');

COMMIT;

BEGIN;

INSERT INTO public.employees (id, "name", age, city)
VALUES
    (1, 'John Doe', 30, 'New York'),
    (2, 'Jane Smith', 28, 'Los Angeles'),
    (3, 'Michael Johnson', 35, 'Chicago'),
    (4, 'Emily Brown', 32, 'San Francisco'),
    (5, 'David Lee', 27, 'Houston');

COMMIT;

