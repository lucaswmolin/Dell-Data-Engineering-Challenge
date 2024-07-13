SELECT csw.country,
       (cvt.last_cumulative_count/cast(csw.population as float) * 1000) as cases_per_1k,
       (tc.visitors/cast(csw.population as float) * 1000) as visitors_per_1k
FROM countries_of_the_world_csv csw
INNER JOIN
  (SELECT cv.country,
          cv.cumulative_count AS last_cumulative_count,
          cv.dt_insert AS last_extract_date
   FROM
     (SELECT country,
             cumulative_count,
             dt_insert,
             rank() over(PARTITION BY country, "indicator"
                         ORDER BY "year" DESC, "week" DESC) AS ordem
      FROM covid19 c
      WHERE "indicator" = 'cases' ) cv
   WHERE ordem = 1) cvt 
ON trim(cvt.country) = trim(csw.country)
inner join tourism_countries tc 
ON trim(cvt.country) = trim(tc.country)