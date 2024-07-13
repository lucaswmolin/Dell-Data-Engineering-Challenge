--Query to identify countries that are in one table but not in the other
SELECT DISTINCT a.country AS covid_country,
                b.country AS csv_country
FROM covid19 a
FULL OUTER JOIN
  (SELECT DISTINCT country
   FROM countries_of_the_world_csv) b ON trim(a.country) = trim(b.country)
WHERE a.country IS NULL
  OR b.country IS null;