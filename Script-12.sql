-- public.pff_api_constants definition

-- Drop table

-- DROP TABLE public.pff_api_constants;

CREATE TABLE public.pff_api_mytestconstant (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	"key" text NOT NULL,
	value text NOT NULL,
	servicetype text NOT NULL,
	CONSTRAINT pff_api_mytestconstant_pkey PRIMARY KEY (id)
);

-- public.pff_api_servicelog definition

-- Drop table

-- DROP TABLE public.pff_api_servicelog;

CREATE TABLE public.pff_api_mytestservicelog (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	requestdata text NULL,
	responsedata text NULL,
	updatedtime text NULL,
	createdtime text NULL,
	username text NULL,
	clientid text NULL,
	servicetype text NULL,
	transactionid text NULL,
	CONSTRAINT pff_api_mytestservicelog_pkey PRIMARY KEY (id)
);

INSERT INTO public.pff_api_mytest_constants
("key", value, servicetype)
VALUES('connectiontimeout', '10000', 'nodeFake');

INSERT INTO public.pff_api_mytest_constants
("key", value, servicetype)
VALUES('readtimeout', '10000', 'nodeFake');

INSERT INTO public.pff_api_mytest_constants
("key", value, servicetype)
VALUES('sourceurl', 'https://node-fake-api-server.herokuapp.com/', 'nodeFake');

SELECT id, requestdata, responsedata, updatedtime, createdtime, username, clientid, servicetype, transactionid
FROM public.pff_api_mytestservicelog where servicetype = 'listUser';

-- public.cart_api_constants_id_seq definition

-- DROP SEQUENCE public.cart_api_constants_id_seq;

CREATE SEQUENCE public.pff_api_mytest_constants_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE public.pff_api_mytest_servicelog_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

CREATE OR REPLACE FUNCTION public.pff_api_mytest_transid(requestdata text, responsedata text, updatedtime bigint, createdtime bigint, username text, clientid text, servicetype text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$  
Declare  
 transid text;  
Begin  
   select CONCAT(servicetype,(SELECT coalesce(max(id),0) + 1 from pff_api_mytest_servicelog)) into transid;
   insert into pff_api_mytest_servicelog (requestdata, responsedata, updatedtime, createdtime, username, clientid, servicetype, transactionid) VALUES (requestdata, responsedata, updatedtime, createdtime, username, clientid, servicetype,transid ); 
   return transid;  
End;  
$function$
;



