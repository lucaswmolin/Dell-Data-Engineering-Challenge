-- Drop table

-- DROP TABLE public.tourism_countries;

CREATE TABLE public.tourism_countries (
	country varchar(60) NOT NULL,
	visitors int4 NULL,
	CONSTRAINT tourism_countries_pkey PRIMARY KEY (country)
);
