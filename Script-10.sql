-- public.test_api_servicelog definition

-- Drop table

-- DROP TABLE public.test_api_servicelog;

CREATE TABLE public.test_api_servicelog_test (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	username text NULL,
	updatetime text NULL,
	servicetype text NULL,
	responsedata text NULL,
	requestdata text NULL,
	createdtime text NULL,
	clientid text NULL
);

-- public.token_api_constants definition

-- Drop table

-- DROP TABLE public.token_api_constants;

CREATE TABLE public.token_api_constants_test (
	id int4 NULL,
	"key" text NULL,
	value text NULL,
	servicetype text NULL
);