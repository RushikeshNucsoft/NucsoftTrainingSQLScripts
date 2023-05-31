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