-- IMPORT DATA FROM GITHUB .CSV FILES

Show variables like 'local_infile';
set global local_infile = 1;

USE covid_malaysia_data;
DROP TABLE IF EXISTS cases_malaysia;

CREATE TABLE cases_malaysia (
_date	date, 
cases_new	integer,
cases_import	integer,
cases_recovered	integer,
cases_active	integer,
cases_cluster	integer,
cases_unvax	integer,
cases_pvax	integer,
cases_fvax	integer,
cases_boost	integer,
cases_child	integer,
cases_adolescent	integer,
cases_adult	integer,
cases_elderly	integer,
cases_0_4	integer,
cases_5_11	integer,
cases_12_17	integer,
cases_18_29	integer,
cases_30_39	integer,
cases_40_49	integer,
cases_50_59	integer,
cases_60_69	integer,
cases_70_79	integer,
cases_80	integer,
cluster_import	integer,
cluster_religious	integer,
cluster_community	integer,
cluster_highRisk	integer,
cluster_education	integer,
cluster_detentionCentre	integer,
cluster_workplace	integer
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/cases_malaysia.csv'
into table cases_malaysia
fields terminated by ','
ignore 1 rows ;

Select*from cases_malaysia;

DROP TABLE IF EXISTS cases_state;
CREATE TABLE cases_state (
_date	date,
state	varchar(255),
cases_new	integer, 
cases_import	integer, 
cases_recovered	integer, 
cases_active	integer, 
cases_cluster	integer, 
cases_unvax	integer, 
cases_pvax	integer, 
cases_fvax	integer, 
cases_boost	integer, 
cases_child	integer, 
cases_adolescent	integer, 
cases_adult	integer, 
cases_elderly	integer, 
cases_0_4	integer, 
cases_5_11	integer, 
cases_12_17	integer, 
cases_18_29	integer, 
cases_30_39	integer, 
cases_40_49	integer, 
cases_50_59	integer, 
cases_60_69	integer, 
cases_70_79	integer, 
cases_80	integer
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/cases_state.csv'
into table cases_state
fields terminated by ','
ignore 1 rows ;

SELECT*FROM cases_state;

DROP TABLE IF EXISTS death_age;
CREATE TABLE death_age (
_week	varchar(255), 
state	varchar(255), 
abs_0_4	integer,
abs_5_11	integer,
abs_12_17	integer,
abs_18_29	integer,
abs_30_39	integer,
abs_40_49	integer,
abs_50_59	integer,
abs_60_69	integer,
abs_70_79	integer,
abs_80_	integer,
perc_0_4	float, 
perc_5_11	float, 
perc_12_17	float, 
perc_18_29	float, 
perc_30_39	float, 
perc_40_49	float, 
perc_50_59	float, 
perc_60_69	float, 
perc_70_79	float, 
perc_80_	float, 
capita_0_4	float, 
capita_5_11	float, 
capita_12_17	float, 
capita_18_29	float, 
capita_30_39	float, 
capita_40_49	float, 
capita_50_59	float, 
capita_60_69	float, 
capita_70_79	float, 
capita_80_	float
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/deaths_age.csv'
into table death_age
fields terminated by ','
ignore 1 rows ;

SELECT*FROM death_age;

DROP TABLE IF EXISTS death_state;
CREATE TABLE death_state (
_date	date,
state	varchar(255),
deaths_new	integer, 
deaths_bid	integer, 
deaths_new_dod	integer, 
deaths_bid_dod	integer, 
deaths_unvax	integer, 
deaths_pvax	integer, 
deaths_fvax	integer, 
deaths_boost	integer, 
deaths_tat	integer 
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/deaths_state.csv'
into table death_state
fields terminated by ','
ignore 1 rows ;

SELECT*FROM death_state;

DROP TABLE IF EXISTS population;
CREATE TABLE population (
state	varchar(255),
idxs	integer, 
pop	integer, 
pop_18	integer, 
pop_60	integer, 
pop_12	integer, 
pop_5	integer 
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/population.csv'
into table population
fields terminated by ','
ignore 1 rows ;

SELECT*FROM population;

DROP TABLE IF EXISTS vax_state;
CREATE TABLE vax_state (
_date	date,
state	varchar(255),
daily_partial	integer, 
daily_full	integer, 
daily_booster	integer, 
daily_booster2	integer, 
daily	integer, 
daily_partial_adol	integer, 
daily_full_adol	integer, 
daily_booster_adol	integer, 
daily_booster2_adol	integer, 
daily_partial_child	integer, 
daily_full_child	integer, 
daily_booster_child	integer, 
daily_booster2_child	integer, 
cumul_partial	integer, 
cumul_full	integer, 
cumul_booster	integer, 
cumul_booster2	integer, 
cumul	integer, 
cumul_partial_adol	integer, 
cumul_full_adol	integer, 
cumul_booster_adol	integer, 
cumul_booster2_adol	integer, 
cumul_partial_child	integer, 
cumul_full_child	integer, 
cumul_booster_child	integer, 
cumul_booster2_child	integer, 
pfizer1	integer, 
pfizer2	integer, 
pfizer3	integer, 
pfizer4	integer, 
sinovac1	integer, 
sinovac2	integer, 
sinovac3	integer, 
sinovac4	integer, 
astra1	integer, 
astra2	integer, 
astra3	integer, 
astra4	integer, 
sinopharm1	integer, 
sinopharm2	integer, 
sinopharm3	integer, 
sinopharm4	integer, 
cansino	integer, 
cansino3	integer, 
cansino4	integer, 
pending1	integer, 
pending2	integer, 
pending3	integer, 
pending4	integer
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/vax_state.csv'
into table vax_state
fields terminated by ','
ignore 1 rows ;

SELECT*FROM vax_state;

DROP TABLE IF EXISTS death_malaysia;
CREATE TABLE death_malaysia (
_date	date,
deaths_new	integer, 
deaths_bid	integer, 
deaths_new_dod	integer, 
deaths_bid_dod	integer, 
deaths_unvax	integer, 
deaths_pvax	integer, 
deaths_fvax	integer, 
deaths_boost	integer, 
deaths_tat	integer 
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/deaths_malaysia.csv'
into table death_malaysia
fields terminated by ','
ignore 1 rows ;

SELECT*FROM death_malaysia;

DROP TABLE IF EXISTS hospital;
CREATE TABLE hospital (
_date	date,
state	varchar(255), 
beds	integer, 
beds_covid	integer, 
beds_noncrit	integer, 
admitted_pui	integer, 
admitted_covid	integer, 
admitted_total	integer, 
discharged_pui	integer, 
discharged_covid	integer, 
discharged_total	integer, 
hosp_covid	integer, 
hosp_pui	integer, 
hosp_noncovid	integer
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/hospital.csv'
into table hospital
fields terminated by ','
ignore 1 rows ;

SELECT*FROM hospital;


DROP TABLE IF EXISTS vax_malaysia;
CREATE TABLE vax_malaysia (
_date	date,
daily_partial	integer, 
daily_full	integer, 
daily_booster	integer, 
daily_booster2	integer, 
daily	integer, 
daily_partial_adol	integer, 
daily_full_adol	integer, 
daily_booster_adol	integer, 
daily_booster2_adol	integer, 
daily_partial_child	integer, 
daily_full_child	integer, 
daily_booster_child	integer, 
daily_booster2_child	integer, 
cumul_partial	integer, 
cumul_full	integer, 
cumul_booster	integer, 
cumul_booster2	integer, 
cumul	integer, 
cumul_partial_adol	integer, 
cumul_full_adol	integer, 
cumul_booster_adol	integer, 
cumul_booster2_adol	integer, 
cumul_partial_child	integer, 
cumul_full_child	integer, 
cumul_booster_child	integer, 
cumul_booster2_child	integer, 
pfizer1	integer, 
pfizer2	integer, 
pfizer3	integer, 
pfizer4	integer, 
sinovac1	integer, 
sinovac2	integer, 
sinovac3	integer, 
sinovac4	integer, 
astra1	integer, 
astra2	integer, 
astra3	integer, 
astra4	integer, 
sinopharm1	integer, 
sinopharm2	integer, 
sinopharm3	integer, 
sinopharm4	integer, 
cansino	integer, 
cansino3	integer, 
cansino4	integer, 
pending1	integer, 
pending2	integer, 
pending3	integer, 
pending4	integer
);

load data local infile 'C:/Users/Adam/Desktop/Business Analyst Course/COVID PROJECT/PROJECT 1/COVIDMALAYSIA/vax_malaysia.csv'
into table vax_malaysia
fields terminated by ','
ignore 1 rows ;

SELECT*FROM vax_malaysia;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- TOTAL CASES BY DEMOGRAPHICS (DONE SHEET 4) (PIE CHART)

SELECT 
    SUM(cases_child) AS Child,
    SUM(cases_adolescent) AS Adolescent,
    SUM(cases_adult) AS Adult,
    SUM(cases_elderly) AS Elderly,
    SUM(cases_0_4) AS "Age 0-4",
    SUM(cases_5_11) AS "Age 5-11",
    SUM(cases_12_17) AS "Age 12-17",
    SUM(cases_18_29) AS "Age 18-29",
    SUM(cases_30_39) AS "Age 30-39",
    SUM(cases_40_49) AS "Age 40-49",
    SUM(cases_50_59) AS "Age 50-59",
    SUM(cases_60_69) AS "Age 60-69",
    SUM(cases_70_79) AS "Age 70-79",
    SUM(cases_80) AS "Age 80+"
FROM
    cases_malaysia;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- TOTAL CASES BY VACCINATION STATUS (DONE)
SELECT 
    SUM(cases_unvax) AS Unvaccinated,
    SUM(cases_pvax) AS Partially_vaccinated,
    SUM(cases_fvax) AS Fully_vaccinated
FROM
    cases_malaysia;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- TOTAL DEATH BY VACCINATION STATUS (DONE)
SELECT 
    SUM(deaths_unvax) AS Unvaccinated,
    SUM(deaths_pvax) AS Partially_vaccinated,
    SUM(deaths_fvax) AS Fully_vaccinated
FROM
    death_state;
    
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- CUMULATIVE CASES (DONE)

SELECT 
	_date, 
	cases_unvax,
	cases_pvax, 
	cases_fvax,
	(cases_unvax + cases_pvax + cases_fvax) as total_cases,
	SUM(cases_unvax + cases_pvax + cases_fvax) OVER (order by _date) as Cumulative_total_case
FROM 
	Cases_malaysia
ORDER BY _date;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- CUMULATIVE DEATH (DONE)

SELECT 
	_date, 
	deaths_unvax,
	deaths_pvax, 
	deaths_fvax,
	(deaths_unvax + deaths_pvax + deaths_fvax) as total_death,
	SUM(deaths_unvax + deaths_pvax + deaths_fvax) OVER (order by _date) as Cumulative_total_death
FROM 
	death_malaysia
ORDER BY _date;


-- ---------------------------------------------------------------------------------------------------------------------------------------
-- DEATH TIMELINE BY VACCINATION STATUS (DONE SHEET 1)
       
SELECT
	_date, 
	deaths_unvax,
	SUM(deaths_unvax) OVER (order by _date) as cul_death_unvax,
	deaths_pvax, 
	SUM(deaths_pvax) OVER (order by _date) as cul_death_pvax,
	deaths_fvax,
	SUM(deaths_fvax) OVER (order by _date) as cul_death_fvax
FROM 
	death_malaysia
ORDER BY _date;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- DEATH, CONFIRMED, RECOVERED (DONE SHEET 2)

SELECT
	dm._date,
	SUM(dm.deaths_unvax + dm.deaths_pvax + dm.deaths_fvax) as Total_death, 
	SUM(dm.deaths_unvax + dm.deaths_pvax + dm.deaths_fvax) OVER (order by _date) as cul_death,
	SUM(cm.cases_unvax + cm.cases_pvax + cm.cases_fvax) as Total_cases,
	SUM(cm.cases_unvax + cm.cases_pvax + cm.cases_fvax) OVER (order by _date) as cul_cases,
	cm.cases_recovered,
	SUM(cm.cases_recovered) OVER (order by _date) as cul_recovered
FROM  
	death_malaysia dm 
		INNER JOIN 
	cases_malaysia cm ON dm._date = cm._date
GROUP BY dm._date
ORDER BY dm._date;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- HIGHEST INFECTIOUS COUNT PER STATE POPULATION (DONE SHEET 3)

SELECT 
    p.state AS State,
    p.pop AS Population,
    MAX(cs.cases_unvax + cs.cases_pvax + cs.cases_fvax) AS highest_infection_count,
    MAX((cs.cases_unvax + cs.cases_pvax + cs.cases_fvax) / p.pop)*100  AS Infected_population_percentage
FROM
    Population p
        INNER JOIN
    cases_state cs ON p.state = cs.state
WHERE
    NOT p.state = 'KLANG VALLEY'
        AND NOT p.state = 'MALAYSIA'
GROUP BY p.state , p.pop
ORDER BY p.state , Infected_population_percentage DESC;


-- ---------------------------------------------------------------------------------------------------------------------------------------
-- HIGHEST DEATH COUNT PER STATE POPULATION (DONE SHEET 5)

SELECT
	state,
    MAX(deaths_unvax + deaths_pvax + deaths_fvax) as Highest_death_count
FROM 
	death_state
GROUP BY 
	state
ORDER BY Highest_death_count desc;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- HIGHEST INFECTION RATE COMPARED TO POPULATION BY STATE (DONE SHEET 6)

SELECT 
    p.state AS State,
    p.pop AS Population,
    cs._date,
    MAX(cs.cases_unvax + cs.cases_pvax + cs.cases_fvax) AS highest_infection_count,
    MAX((cs.cases_unvax + cs.cases_pvax + cs.cases_fvax) / p.pop) * 100 AS Infected_population_percentage
FROM
    Population p
        INNER JOIN
    cases_state cs ON p.state = cs.state
WHERE
    NOT p.state = 'KLANG VALLEY'
        AND NOT p.state = 'MALAYSIA'
GROUP BY p.state , p.pop, cs._date
ORDER BY p.state , Infected_population_percentage DESC;


-- ---------------------------------------------------------------------------------------------------------------------------------------
-- CASES BASE ON VACCINATION STATUS VS HOSPITALISATION (DONE SHEET 7)

SELECT 
	cm._date, 
	cm.cases_unvax,
	cm.cases_pvax, 
	cm.cases_fvax,
	(cm.cases_unvax + cm.cases_pvax + cm.cases_fvax) as total_cases,
	SUM(cm.cases_unvax + cm.cases_pvax + cm.cases_fvax) OVER (order by _date) as Cumulative_total_case,
    SUM(h.hosp_covid) as Hospitalisation
FROM 
	Cases_malaysia cm
    LEFT JOIN 
		hospital h ON cm._date = h._date
	GROUP BY cm._date
ORDER BY cm._date;

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- QUICK STATS

SELECT 
    SUM(cm.cases_unvax + cm.cases_pvax + cm.cases_fvax) AS total_cases,
    SUM(cm.cases_recovered) AS total_recovered,
    SUM(dm.deaths_unvax + dm.deaths_pvax + dm.deaths_fvax) AS total_death
FROM
    cases_malaysia cm
        INNER JOIN
    death_malaysia dm ON cm._date = dm._date;
-- ---------------------------------------------------------------------------------------------------------------------------------------
SELECT 
   (MAX(vm.cumul_full) / MAX(p.pop)) AS population_fvax,
    (MAX(vm.cumul_partial) / MAX(p.pop)) AS population_pvax
FROM
      vax_malaysia vm 
        INNER JOIN
    vax_state vs ON vm._date = vs._date
        RIGHT JOIN
    population p ON vs.state = p.state;









