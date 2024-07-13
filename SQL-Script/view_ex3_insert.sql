INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Afghanistan ',157797,1.0690022605855936,'2021-12-29 22:39:34.650109'),
	 ('Albania ',205777,112.99245739748802,'2021-12-29 22:39:34.650109'),
	 ('Algeria ',214330,10.352233766982302,'2021-12-29 22:39:34.650109'),
	 ('American Samoa ',10,0.0,'2021-12-29 22:39:34.650109'),
	 ('Andorra ',21062,3414.277889355487,'2021-12-29 22:39:34.650109'),
	 ('Angola ',65868,5.145512877759188,'2021-12-29 22:39:34.650109'),
	 ('Anguilla ',1592,1320.7687170735326,'2021-12-29 22:39:34.650109'),
	 ('Antigua And Barbuda',4198,73.79753429414829,'2021-12-29 22:39:34.650109'),
	 ('Argentina ',5395044,130.17939331593317,'2021-12-29 22:39:34.650109'),
	 ('Armenia ',343708,97.09807779403918,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Aruba ',16848,553.6158907234563,'2021-12-29 22:39:34.650109'),
	 ('Australia ',250728,155.99028862990193,'2021-12-29 22:39:34.650109'),
	 ('Austria ',1245687,591.4403726162229,'2021-12-29 22:39:34.650109'),
	 ('Azerbaijan ',610318,174.96441364501365,'2021-12-29 22:39:34.650109'),
	 ('Bahamas',23112,94.47937584356586,'2021-12-29 22:39:34.650109'),
	 ('Bahrain ',278499,95.62186419691233,'2021-12-29 22:39:34.650109'),
	 ('Bangladesh ',1581083,2.723163854689534,'2021-12-29 22:39:34.650109'),
	 ('Barbados ',27242,372.2598530966875,'2021-12-29 22:39:34.650109'),
	 ('Belarus ',685462,197.5806690578685,'2021-12-29 22:39:34.650109'),
	 ('Belgium ',1999127,1224.4838577494488,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Belize ',31294,163.34758280332255,'2021-12-29 22:39:34.650109'),
	 ('Benin ',24907,0.5595868417732595,'2021-12-29 22:39:34.650109'),
	 ('Bermuda ',5917,252.38319675246683,'2021-12-29 22:39:34.650109'),
	 ('Bhutan ',2657,0.7018396533263032,'2021-12-29 22:39:34.650109'),
	 ('Bolivia ',564747,243.49636212786095,'2021-12-29 22:39:34.650109'),
	 ('Bosnia And Herzegovina',285133,147.1890492414274,'2021-12-29 22:39:34.650109'),
	 ('Botswana ',199864,278.19906051408896,'2021-12-29 22:39:34.650109'),
	 ('Brazil ',22213762,37.575322315219395,'2021-12-29 22:39:34.650109'),
	 ('British Virgin Islands',2889,316.04467919300373,'2021-12-29 22:39:34.650109'),
	 ('Brunei Darussalam',15376,50.07326509313628,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Bulgaria ',724337,296.3021336651246,'2021-12-29 22:39:34.650109'),
	 ('Burkina Faso ',16672,4.833498909441809,'2021-12-29 22:39:34.650109'),
	 ('Burundi ',22212,21.915761400275002,'2021-12-29 22:39:34.650109'),
	 ('Cambodia ',120416,1.037357326447778,'2021-12-29 22:39:34.650109'),
	 ('Cameroon ',107662,2.9641245204490567,'2021-12-29 22:39:34.650109'),
	 ('Canada ',1886012,222.8712394708083,'2021-12-29 22:39:34.650109'),
	 ('Cape Verde ',38589,33.01827407067811,'2021-12-29 22:39:34.650109'),
	 ('Cayman Islands ',8245,1280.9226164275024,'2021-12-29 22:39:34.650109'),
	 ('Central African Republic',11961,3.95040521862472,'2021-12-29 22:39:34.650109'),
	 ('Chad ',5703,0.0,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Chile ',1792902,116.85722128849248,'2021-12-29 22:39:34.650109'),
	 ('China ',112989,0.09178265805991813,'2021-12-29 22:39:34.650109'),
	 ('Colombia ',5109022,60.23898083719108,'2021-12-29 22:39:34.650109'),
	 ('Comoros ',4677,19.538373365289427,'2021-12-29 22:39:34.650109'),
	 ('Congo',19179,4.402651963069583,'2021-12-29 22:39:34.650109'),
	 ('Costa Rica ',568538,22.67339441571963,'2021-12-29 22:39:34.650109'),
	 ('Cote Divoire',62077,1.4330345503497255,'2021-12-29 22:39:34.650109'),
	 ('Croatia ',675730,978.1413823107808,'2021-12-29 22:39:34.650109'),
	 ('Cuba ',964176,8.627036182597985,'2021-12-29 22:39:34.650109'),
	 ('Cyprus ',143554,999.2337125669864,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Czechia',2407038,1557.5467822387964,'2021-12-29 22:39:34.650109'),
	 ('Democratic Republic Of The Congo',67298,14.09978025887452,'2021-12-29 22:39:34.650109'),
	 ('Denmark ',623084,2088.0036384577943,'2021-12-29 22:39:34.650109'),
	 ('Djibouti ',13535,5.549503627731075,'2021-12-29 22:39:34.650109'),
	 ('Dominica ',6430,949.0639965171963,'2021-12-29 22:39:34.650109'),
	 ('Dominican Republic ',411883,34.13551243120632,'2021-12-29 22:39:34.650109'),
	 ('Ecuador ',537032,56.711528539192805,'2021-12-29 22:39:34.650109'),
	 ('Egypt ',375330,15.424593304699721,'2021-12-29 22:39:34.650109'),
	 ('El Salvador ',121530,25.313754236426067,'2021-12-29 22:39:34.650109'),
	 ('Equatorial Guinea ',13618,3.517808442369966,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Eritrea ',7763,6.371430588799568,'2021-12-29 22:39:34.650109'),
	 ('Estonia ',222214,545.0290825645816,'2021-12-29 22:39:34.650109'),
	 ('Eswatini',60036,1102.8447621913979,'2021-12-29 22:39:34.650109'),
	 ('Ethiopia ',376375,5.563134955462357,'2021-12-29 22:39:34.650109'),
	 ('Faroe Islands ',4735,1646.7002497565932,'2021-12-29 22:39:34.650109'),
	 ('Fiji ',52651,9.823952562451087,'2021-12-29 22:39:34.650109'),
	 ('Finland ',216861,452.94045233258123,'2021-12-29 22:39:34.650109'),
	 ('France ',8582736,1149.6048303722825,'2021-12-29 22:39:34.650109'),
	 ('French Polynesia ',46342,6.555514280095274,'2021-12-29 22:39:34.650109'),
	 ('Gabon ',37830,34.2478731930387,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Gambia',10051,3.2286283081256655,'2021-12-29 22:39:34.650109'),
	 ('Georgia ',910456,930.7143900651146,'2021-12-29 22:39:34.650109'),
	 ('Germany ',6816908,737.5382722580937,'2021-12-29 22:39:34.650109'),
	 ('Ghana ',131911,2.967481931381822,'2021-12-29 22:39:34.650109'),
	 ('Gibraltar ',7822,1614.8668003437413,'2021-12-29 22:39:34.650109'),
	 ('Greece ',1036562,625.4269952502129,'2021-12-29 22:39:34.650109'),
	 ('Greenland ',1969,617.4482354819822,'2021-12-29 22:39:34.650109'),
	 ('Grenada ',5920,13.377479014079798,'2021-12-29 22:39:34.650109'),
	 ('Guam ',19390,70.16764219180324,'2021-12-29 22:39:34.650109'),
	 ('Guatemala ',623795,31.756503107931845,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Guernsey ',5817,1810.1484505190417,'2021-12-29 22:39:34.650109'),
	 ('Guinea ',30814,0.1651148962325115,'2021-12-29 22:39:34.650109'),
	 ('Guinea Bissau',6456,0.8321607956566754,'2021-12-29 22:39:34.650109'),
	 ('Guyana ',38870,104.5298437917484,'2021-12-29 22:39:34.650109'),
	 ('Haiti ',25917,5.464280934329453,'2021-12-29 22:39:34.650109'),
	 ('Honduras ',378804,9.431520879831233,'2021-12-29 22:39:34.650109'),
	 ('Hungary ',1228481,709.6446226526434,'2021-12-29 22:39:34.650109'),
	 ('Iceland ',20887,752.5351717503708,'2021-12-29 22:39:34.650109'),
	 ('India ',34746838,9.61124830014118,'2021-12-29 22:39:34.650109'),
	 ('Indonesia ',4260544,1.1647863501739126,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Iran ',6170979,53.158877565310014,'2021-12-29 22:39:34.650109'),
	 ('Iraq ',2090480,22.902259957227958,'2021-12-29 22:39:34.650109'),
	 ('Ireland ',661373,1582.9463337300772,'2021-12-29 22:39:34.650109'),
	 ('Israel ',1356201,156.76663386395433,'2021-12-29 22:39:34.650109'),
	 ('Italy ',5385649,429.31177610489675,'2021-12-29 22:39:34.650109'),
	 ('Jamaica ',92089,22.479047352475813,'2021-12-29 22:39:34.650109'),
	 ('Japan ',1729964,1.5863350991994098,'2021-12-29 22:39:34.650109'),
	 ('Jersey ',16487,1806.0252075007686,'2021-12-29 22:39:34.650109'),
	 ('Jordan ',1040243,989.9843569063243,'2021-12-29 22:39:34.650109'),
	 ('Kazakhstan ',1066934,53.67208717985479,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Kenya ',264727,26.766304547474135,'2021-12-29 22:39:34.650109'),
	 ('Kuwait ',414098,25.099311815738798,'2021-12-29 22:39:34.650109'),
	 ('Kyrgyzstan ',184269,11.891295150001016,'2021-12-29 22:39:34.650109'),
	 ('Laos ',94554,231.15402244271434,'2021-12-29 22:39:34.650109'),
	 ('Latvia ',267137,431.2590257766289,'2021-12-29 22:39:34.650109'),
	 ('Lebanon ',700943,571.5465727081478,'2021-12-29 22:39:34.650109'),
	 ('Lesotho ',25528,182.46271258265833,'2021-12-29 22:39:34.650109'),
	 ('Liberia ',5916,3.024322124494248,'2021-12-29 22:39:34.650109'),
	 ('Libya ',382341,116.47664010395958,'2021-12-29 22:39:34.650109'),
	 ('Liechtenstein ',5676,2147.880071792156,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Lithuania ',487746,640.3123785174514,'2021-12-29 22:39:34.650109'),
	 ('Luxembourg ',101261,1126.2338932533467,'2021-12-29 22:39:34.650109'),
	 ('Madagascar ',45794,7.872885593797069,'2021-12-29 22:39:34.650109'),
	 ('Malawi ',64741,21.208050514502695,'2021-12-29 22:39:34.650109'),
	 ('Malaysia ',2718955,246.7946791127874,'2021-12-29 22:39:34.650109'),
	 ('Maldives ',93957,486.34013726713613,'2021-12-29 22:39:34.650109'),
	 ('Mali ',19306,11.871812757530215,'2021-12-29 22:39:34.650109'),
	 ('Malta ',41516,522.7203446156306,'2021-12-29 22:39:34.650109'),
	 ('Marshall Islands ',4,0.0,'2021-12-29 22:39:34.650109'),
	 ('Mauritania ',40083,18.033680494796354,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Mauritius ',65832,767.7137908830159,'2021-12-29 22:39:34.650109'),
	 ('Mexico ',3934102,31.46500647629666,'2021-12-29 22:39:34.650109'),
	 ('Micronesia (Federated States Of)',0,0.0,'2021-12-29 22:39:34.650109'),
	 ('Moldova ',372200,133.07345502479902,'2021-12-29 22:39:34.650109'),
	 ('Monaco ',4423,1600.9587315244448,'2021-12-29 22:39:34.650109'),
	 ('Mongolia ',386399,100.27455455500696,'2021-12-29 22:39:34.650109'),
	 ('Montserrat ',44,0.0,'2021-12-29 22:39:34.650109'),
	 ('Morocco ',952814,6.687472336712638,'2021-12-29 22:39:34.650109'),
	 ('Mozambique ',160457,43.34441283508678,'2021-12-29 22:39:34.650109'),
	 ('Namibia ',139518,475.6018035884895,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Nepal ',825736,11.114588544401455,'2021-12-29 22:39:34.650109'),
	 ('Netherlands ',2979839,1385.510962309525,'2021-12-29 22:39:34.650109'),
	 ('New Caledonia ',12519,112.202731178676,'2021-12-29 22:39:34.650109'),
	 ('New Zealand ',13125,28.556428385678608,'2021-12-29 22:39:34.650109'),
	 ('Nicaragua ',17391,2.4595480643266967,'2021-12-29 22:39:34.650109'),
	 ('Niger ',7199,1.1017881382766468,'2021-12-29 22:39:34.650109'),
	 ('Nigeria ',223905,7.040056831300528,'2021-12-29 22:39:34.650109'),
	 ('North Macedonia',221285,194.28895800842113,'2021-12-29 22:39:34.650109'),
	 ('Northern Mariana Islands',2205,1335.2090129640185,'2021-12-29 22:39:34.650109'),
	 ('Norway ',353331,1385.2850469113955,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Oman ',304874,8.445540287322439,'2021-12-29 22:39:34.650109'),
	 ('Pakistan ',1291467,2.5970491827799114,'2021-12-29 22:39:34.650109'),
	 ('Palau ',8,0.0,'2021-12-29 22:39:34.650109'),
	 ('Panama ',483386,135.77458098046606,'2021-12-29 22:39:34.650109'),
	 ('Papua New Guinea ',36006,6.066437364739609,'2021-12-29 22:39:34.650109'),
	 ('Paraguay ',464630,20.21067049629415,'2021-12-29 22:39:34.650109'),
	 ('Peru ',2266205,74.4065837336587,'2021-12-29 22:39:34.650109'),
	 ('Philippines ',2837577,3.131822324812068,'2021-12-29 22:39:34.650109'),
	 ('Poland ',3940198,736.3597701722991,'2021-12-29 22:39:34.650109'),
	 ('Portugal ',1227832,554.9662592507734,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Puerto Rico ',195867,179.46683479375065,'2021-12-29 22:39:34.650109'),
	 ('Qatar ',246537,261.36290476518565,'2021-12-29 22:39:34.650109'),
	 ('Romania ',1783513,49.413653932790616,'2021-12-29 22:39:34.650109'),
	 ('Russia ',10214790,289.15023030432303,'2021-12-29 22:39:34.650109'),
	 ('Rwanda ',101582,13.505625648108149,'2021-12-29 22:39:34.650109'),
	 ('Saint Kitts And Nevis',2801,30.667791152342254,'2021-12-29 22:39:34.650109'),
	 ('Saint Lucia ',13166,70.04713341010816,'2021-12-29 22:39:34.650109'),
	 ('Saint Vincent And The Grenadines',5758,114.5543411852556,'2021-12-29 22:39:34.650109'),
	 ('Samoa ',2,0.5652655617609152,'2021-12-29 22:39:34.650109'),
	 ('San Marino ',7160,3223.8214078151173,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Sao Tome And Principe',3742,5.170283279820902,'2021-12-29 22:39:34.650109'),
	 ('Saudi Arabia ',550842,3.441929159102287,'2021-12-29 22:39:34.650109'),
	 ('Senegal ',74161,1.0844972700283915,'2021-12-29 22:39:34.650109'),
	 ('Serbia ',1282461,200.05510614637865,'2021-12-29 22:39:34.650109'),
	 ('Seychelles ',24128,584.981788302817,'2021-12-29 22:39:34.650109'),
	 ('Sierra Leone ',6505,1.715165896507223,'2021-12-29 22:39:34.650109'),
	 ('Singapore ',275910,149.12681010206694,'2021-12-29 22:39:34.650109'),
	 ('Slovakia ',1197299,1390.545511235699,'2021-12-29 22:39:34.650109'),
	 ('Slovenia ',449149,908.7485891739088,'2021-12-29 22:39:34.650109'),
	 ('Solomon Islands ',20,0.0,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Somalia ',23169,1.331326865792549,'2021-12-29 22:39:34.650109'),
	 ('South Africa ',3308074,625.4690650237758,'2021-12-29 22:39:34.650109'),
	 ('South Korea',570414,190.50573667810494,'2021-12-29 22:39:34.650109'),
	 ('Spain ',5534520,710.8944086666808,'2021-12-29 22:39:34.650109'),
	 ('Sri Lanka ',579685,59.355442324885864,'2021-12-29 22:39:34.650109'),
	 ('Sudan ',45826,4.246250725512313,'2021-12-29 22:39:34.650109'),
	 ('Suriname ',51416,96.32967978921336,'2021-12-29 22:39:34.650109'),
	 ('Sweden ',1260185,479.41595697533745,'2021-12-29 22:39:34.650109'),
	 ('Switzerland ',1169968,1415.5094927733285,'2021-12-29 22:39:34.650109'),
	 ('Syria ',49751,5.9953305272856126,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Taiwan ',16816,0.6685163152926102,'2021-12-29 22:39:34.650109'),
	 ('Tajikistan ',17493,0.0,'2021-12-29 22:39:34.650109'),
	 ('Thailand ',2194053,75.52343401087347,'2021-12-29 22:39:34.650109'),
	 ('Timor Leste',19833,0.4704655821494067,'2021-12-29 22:39:34.650109'),
	 ('Togo ',26742,7.893738030984545,'2021-12-29 22:39:34.650109'),
	 ('Tonga ',1,0.0,'2021-12-29 22:39:34.650109'),
	 ('Trinidad And Tobago',85837,929.0307569039313,'2021-12-29 22:39:34.650109'),
	 ('Tunisia ',721103,25.601930375722333,'2021-12-29 22:39:34.650109'),
	 ('Turkey ',9154209,386.9247060362663,'2021-12-29 22:39:34.650109'),
	 ('Turks And Caicos Islands',3172,321.48260211800306,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Uganda ',129130,5.043312549825765,'2021-12-29 22:39:34.650109'),
	 ('Ukraine ',3610687,232.77692258683726,'2021-12-29 22:39:34.650109'),
	 ('United Arab Emirates ',744137,69.50439791094908,'2021-12-29 22:39:34.650109'),
	 ('United Kingdom ',11361387,1479.9711852102603,'2021-12-29 22:39:34.650109'),
	 ('United Republic Of Tanzania',26483,0.5928633354939908,'2021-12-29 22:39:34.650109'),
	 ('United States Of America',50846941,590.246991384973,'2021-12-29 22:39:34.650109'),
	 ('United States Virgin Islands',7681,121.54136549882602,'2021-12-29 22:39:34.650109'),
	 ('Uruguay ',404821,113.5220627914539,'2021-12-29 22:39:34.650109'),
	 ('Uzbekistan ',197268,9.931470655250749,'2021-12-29 22:39:34.650109'),
	 ('Vanuatu ',7,0.9575379783500663,'2021-12-29 22:39:34.650109');
INSERT INTO "SELECT csw.country,
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
             rank() over(PARTITION BY country, ""indicator""
                         ORDER BY ""year"" DESC, ""week"" DESC) AS ordem
      FROM covid19 c
      WHERE ""indicator"" = 'cases' ) cv
   WHERE ordem < 3
   GROUP BY cv.country) cvt ON trim(cvt.country) = trim(csw.country)" (country,latest_number_of_cases,cumulative_number_for_14_days_of_covid19_cases_per_100000,last_extract_date) VALUES
	 ('Venezuela ',441228,27.574349209409014,'2021-12-29 22:39:34.650109'),
	 ('Vietnam ',1540478,274.1443944043388,'2021-12-29 22:39:34.650109'),
	 ('Wallis And Futuna',454,0.0,'2021-12-29 22:39:34.650109'),
	 ('Western Sahara ',766,0.0,'2021-12-29 22:39:34.650109'),
	 ('Yemen ',10101,0.35421017004511707,'2021-12-29 22:39:34.650109'),
	 ('Zambia ',216508,53.86884553221568,'2021-12-29 22:39:34.650109'),
	 ('Zimbabwe ',192796,439.2486437431993,'2021-12-29 22:39:34.650109');