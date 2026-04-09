-- Query 1: String Functions

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














