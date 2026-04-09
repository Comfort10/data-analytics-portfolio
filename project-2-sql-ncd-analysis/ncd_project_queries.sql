-- Query 1: String Functions

-- Standardising: Converting all province names to uppercase. 

SELECT record_id, year, UPPER(province) AS province, diabetes_prevalence, hypertension_awareness,
	hypertension_awareness, on_treatment, controlled, population_millions
FROM ncd_data

-- Province code: Extracting the first 3 characters of each province name as a short code column.


















