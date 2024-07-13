-- Drop table

-- DROP TABLE public.covid19;

CREATE TABLE public.covid19 (
	country varchar(60) NOT NULL,
	country_code varchar(3) NULL,
	continent varchar(60) NULL,
	population int8 NULL,
	"indicator" varchar(20) NULL,
	weekly_count int4 NULL,
	"year" int4 NULL,
	week int4 NULL,
	rate_14_day float8 NULL,
	cumulative_count int4 NULL,
	"source" varchar(80) NULL,
	dt_insert timestamp NULL DEFAULT now(),
	CONSTRAINT covid19_no_duplicate_row UNIQUE (country, year, week, indicator)
);

-- Drop table

-- DROP TABLE public.countries_of_the_world_csv;

CREATE TABLE public.countries_of_the_world_csv (
	country varchar(60) NULL,
	region varchar(60) NULL,
	population int4 NULL,
	area int4 NULL,
	pop_density float4 NULL,
	coastline float4 NULL,
	net_migration float4 NULL,
	infant_mortality float4 NULL,
	gdp int4 NULL,
	literacy float4 NULL,
	phones float4 NULL,
	arable float4 NULL,
	crops float4 NULL,
	other float4 NULL,
	climate float4 NULL,
	birthrate float4 NULL,
	deathrate float4 NULL,
	agriculture float4 NULL,
	industry float4 NULL,
	service float4 NULL
);
