CREATE VIEW view_ex3 AS
SELECT csw.country,
       cvt.last_cumulative_count AS latest_number_of_cases,
       cvt.sum_last_14_days/cast(csw.population AS float) * 100000 AS cumulative_number_for_14_days_of_COVID19_cases_per_100000,
       cvt.last_extract_date
FROM countries_of_the_world_csv csw
INNER JOIN
  (SELECT cv.country,
          max(cv.cumulative_count) AS last_cumulative_count,
          sum(cv.weekly_count) AS sum_last_14_days,
          max(cv.dt_insert) AS last_extract_date
   FROM
     (SELECT country,
             cumulative_count,
             weekly_count,
             dt_insert,
             rank() over(PARTITION BY country, "indicator"
                         ORDER BY "year" DESC, "week" DESC) AS ordem
      FROM covid19 c
      WHERE "indicator" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt 
ON trim(cvt.country) = trim(csw.country)