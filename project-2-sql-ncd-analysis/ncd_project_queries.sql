-- String Functions

-- Standardising: Converting all province names to uppercase. 

SELECT record_id, year, UPPER(province) AS province, diabetes_prevalence, hypertension_awareness,
	hypertension_awareness, on_treatment, controlled, population_millions
FROM ncd_data

-- Province code: Extracting the first 3 characters of each province name as a short code column.
SELECT record_id, province, UPPER(LEFT(province, 3)) AS province_code
FROM ncd_data

-- Filter by text: Return all records where the province name contains the word 'Cape'
SELECT record_id, province
FROM ncd_data

WHERE province LIKE '%Cape%'

-- CASE Statements

	
-- Risk stratification using CASE statements
-- Categorises diabetes prevalence and hypertension awareness by risk level

SELECT year, province, diabetes_prevalence,
	CASE
		WHEN diabetes_prevalence < 8 THEN 'Low Risk'
		WHEN diabetes_prevalence BETWEEN 8 and 10 THEN 'Moderate Risk'
		WHEN diabetes_prevalence > 10 THEN 'High Risk'
	END AS diabetes_risk_level, hypertension_awareness,
	CASE
		WHEN hypertension_awareness < 45 THEN 'Poor'
		WHEN hypertension_awareness BETWEEN 45 and 55 THEN 'Developing'
		WHEN hypertension_awareness > 55 THEN 'Good'
	END AS awareness_level
		
FROM ncd_data

-- Subqueries

	
-- Records with diabetes prevalence above national average

SELECT year, province, diabetes_prevalence
FROM ncd_data
WHERE diabetes_prevalence > (
		SELECT AVG(diabetes_prevalence)
		FROM ncd_data)


-- Provinces where average hypertension prevalence exceeds 30%
SELECT province, avg_hyp_prevalence
FROM
	(
	SELECT province, AVG(hypertension_prevalence) AS avg_hyp_prevalence
	FROM ncd_data

	GROUP BY province
	) AS hyp_avg_by_province

WHERE avg_hyp_prevalence > 30


-- Query 4: Window functions — provincial disease burden ranking and 
-- year-on-year diabetes prevalence change using LAG()

SELECT year, province, diabetes_prevalence,
	LAG(diabetes_prevalence, 1, 0) OVER (PARTITION BY province ORDER BY year) AS prev_year_diabetes,
	diabetes_prevalence - LAG(diabetes_prevalence, 1, diabetes_prevalence) OVER (PARTITION BY province ORDER BY year) AS yoy_change, 
	RANK() OVER(PARTITION BY (year) ORDER BY diabetes_prevalence DESC) AS disease_burden_rank
FROM ncd_data



-- CTE — 2022 provincial performance vs SA 2030 NSP targets
-- CTE 1: filters 2022 records only
-- CTE 2: calculates gap between actual and target for each indicator
-- Final SELECT: classifies each province against NSP awareness target


WITH cte_record_2022 AS (
	SELECT year, province, hypertension_awareness, on_treatment, controlled
	FROM ncd_data

	WHERE year = 2022 
	),

cte_calculate AS (
	SELECT province,
	(90 - hypertension_awareness) AS awareness_gap,
	(60 - on_treatment) AS treatment_gap,
	(50 - controlled) AS controlled_gap
	FROM cte_record_2022
	)

SELECT province,
	CASE
		WHEN awareness_gap < 10 THEN 'Close to target'
		WHEN awareness_gap BETWEEN 10 and 30 THEN 'Needs improvement'
		WHEN awareness_gap > 30 THEN 'Far from target'
	END AS NSP_2030_Target
FROM cte_calculate









