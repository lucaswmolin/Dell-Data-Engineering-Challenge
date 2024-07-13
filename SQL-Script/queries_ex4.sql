--For performance analysis, I used EXPLAIN command before each query. 
--To view the plans, I used https://tatiyants.com/pev/#/plans/new
--The performance analysis of each query will be presented after the respective query.

--Query 1
--What is the country with the highest number of Covid-19 cases per 100 000 Habitants at 31/07/2020?
SELECT country,
       cumulative_count/cast(population AS float) * 100000 AS cases_per_100k_h
FROM covid19 c19
WHERE "indicator" = 'cases'
  AND country_code IS NOT NULL
  AND "year" = 2020
  AND "week" = extract('week'
                       FROM TO_DATE('2020-07-30', 'YYYY-MM-DD'))
ORDER BY 2 DESC
LIMIT 1;

--Analysis
--17.4 execution time (ms) 
--0.1 planning time (ms) 
--17.33 slowest node (ms) 
--209 largest node (rows) 
--2163.14 costliest node

--The query started with a SEQ SCAN, with a cost of 2163.14 representing practically 100% of the time spent. 
--Afterwards, a SORT was performed using the top-N heapsort and a LIMIT method, both with a cost close to 0.


--Query 2
--What is the top 10 countries with the lowest number of Covid-19 cases per 100 000 Habitants at 31/07/2020?
SELECT country,
       cumulative_count/cast(population AS float) * 100000 AS cases_per_100k_h
FROM covid19 c19
WHERE "indicator" = 'cases'
  AND country_code IS NOT NULL
  AND "year" = 2020
  AND "week" = extract('week'
                       FROM TO_DATE('2020-07-30', 'YYYY-MM-DD'))
ORDER BY 2 ASC
LIMIT 10;

--Analysis
--17.59 execution time (ms) 
--0.13 planning time (ms) 
--17.49 slowest node (ms) 
--209 largest node (rows) 
--2163.14 costliest node

--The query started with a SEQ SCAN costing 2163.14, representing 99% of the total time spent. 
--Afterwards, a SORT and a LIMIT were performed.


--Query 3
--What is the top 10 countries with the highest number of cases among the top 20 richest countries (by GDP per capita)?
SELECT c19.country,
       c19.cumulative_count
FROM covid19 c19
inner join (select country from countries_of_the_world_csv cw where gdp is not null order by gdp desc limit 20) cw
on trim(c19.country) = trim(cw.country)
WHERE "indicator" = 'cases'
  AND country_code IS NOT NULL
  AND "year" = 2020
  AND "week" = extract('week'
                       FROM TO_DATE('2020-07-30', 'YYYY-MM-DD'))
ORDER BY 2 DESC
LIMIT 10;

--Analysis
--19.99 execution time (ms) 
--0.19 planning time (ms) 
--18.19 slowest node (ms) 
--226 largest node (rows) 
--2162.65 costliest node

--The query started with a SEQ SCAN from the covid19 table, with a cost of 2162.65 and a time of 18.19 ms (91%). 
--It was the slowest and most costly process. 
--Together, a SEQ SCAN of the countries_of_the_world_csv table with a cost of 7.27 was performed, 
--followed by a SORT, LIMIT, SUBQUERY SCAN and MATERIALIZE. 
--With both returns, a NESTED LOOP was performed for an inner join with a cost of 19.54 
--and a time of 1.72 ms (9%), followed by a SORT and a LIMIT.


--Query 4
--List all the regions with the number of cases per million of inhabitants and display information on population density, for 31/07/2020.
SELECT a.region,
       a.sum_cumulative_count/a.sum_population * 1000000 AS covid_per_million,
       sum_population/sum_area AS pop_km2
FROM
  (SELECT cw.region,
          sum(c19.cumulative_count) AS sum_cumulative_count,
          sum(c19.population) AS sum_population,
          sum(cw.km2) AS sum_area
   FROM covid19 c19
   INNER JOIN
     (SELECT country,
             region,
             "area" AS km2
      FROM countries_of_the_world_csv) cw ON trim(c19.country) = trim(cw.country)
   WHERE "indicator" = 'cases'
     AND country_code IS NOT NULL
     AND "year" = 2020
     AND "week" = extract('week'
                          FROM TO_DATE('2020-07-30', 'YYYY-MM-DD'))
   GROUP BY cw.region) a;
   
--Analysis
--18.38 execution time (ms) 
--0.17 planning time (ms) 
--17.61 slowest node (ms) 
--227 largest node (rows) 
--2162.65 costliest node

--The query started with a SEQ SCAN from the covid19 table, with a cost of 2162.65 and a time of 17.61 ms (96%). 
--Together, a SEQ SCAN of the countries_of_the_world_csv table was performed followed by a HASH. 
--Afterwards, a HASH JOIN was performed for an inner join followed by a SORT (quicksort), AGGREGATE and SUBQUERY SCAN.


--Query 5
--Query the data to find duplicated records.

--covid19
--There are no duplicate records due to CONSTRAINT covid19_no_duplicate_row UNIQUE (country, year, week, indicator)
SELECT country,
       country_code,
       continent,
       population,
       "indicator",
       weekly_count,
       "year",
       "week",
       rate_14_day,
       cumulative_count,
       "source",
       count(1) AS record_count
FROM covid19
GROUP BY country,
         country_code,
         continent,
         population,
         "indicator",
         weekly_count,
         "year",
         "week",
         rate_14_day,
         cumulative_count,
         "source"
HAVING count(1) > 1;

--Analysis
--257.71 execution time (ms) 
--0.13 planning time (ms) 
--214.2 slowest node (ms) 
--42146 largest node (rows) 
--5505.83 costliest node

--The query started with a SEQ SCAN, with a cost of 1530.46 and a time of 7.28 ms (3%), 
--followed by a SORT (external merge) of a cost of 5505.83 and a time of 214.2 ms (83%) 
--and an AGGREGATE with a cost of 1579.26 and a time of 22.22 ms.


--countries_of_the_world_csv
SELECT country,
       count(1) AS country_count
FROM countries_of_the_world_csv
GROUP BY country
HAVING count(1) > 1;

--Analysis
--<1 execution time (ms) 
--0.08 planning time (ms) 
--<1 slowest node (ms) 
--227 largest node (rows) 
--7.27 costliest node

--The query started with a SEQ SCAN with a cost of 7.27 
--and a time of 0.042 ms (the most expensive process)
--followed by an AGGREGATE with a cost of 3.97 and a time of 0.129 ms (the slowest process).