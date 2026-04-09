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









