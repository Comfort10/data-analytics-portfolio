-- Use the BankingSectorDB database

USE BankingSectorDB

/* 
Query 1 — Monthly trend:
Show all monthly PSCE values. Add a column showing month-on-month change.
*/

SELECT 
	date, 
	code, 
	value,
	value - LAG(value) OVER(
		PARTITION BY code
		ORDER BY date
	) AS month_on_month					
FROM sarb_monthly
WHERE code = 'KBP1347M'


/* 
Query 2 — COVID period classification:
Flag each month as 'Pre-COVID' (before March 2020), 'During-COVID' (March 2020 — December 2021),
or 'Post-COVID' (2022 onwards).
*/
SELECT date,
	CASE
		WHEN date < '2020-03-01' THEN 'Pre-COVID'
		WHEN date BETWEEN '2020-03-01' and '2021-12-31' THEN 'During-COVID'
		WHEN date >= '2022-01-01' THEN 'Post-COVID'
	END AS COVID_period
FROM sarb_monthly

GROUP BY date


/* 
Query 3 — Stress indicator:
Find all months where provisions were above the average provisions value across the entire period.
*/
SELECT date
FROM sarb_monthly

WHERE value > (
				SELECT AVG(value)
				FROM sarb_monthly
					WHERE code = 'KBP1123M'
	)
		AND code = 'KBP1123M'


/* 
Query 4 — Rate trend:
Show prime lending rate by month. Add a column classifying the rate as 'High' (above 10%), 
'Medium' (8–10%), or 'Low' (below 7%).
*/
SELECT date, value,
	CASE
		WHEN value > 10 THEN 'High'
		WHEN value BETWEEN 8 AND 10 THEN 'Medium'
		WHEN value < 8 THEN 'Low'
	END AS rate_class
FROM sarb_monthly

WHERE code = 'KBP1486M'


/* 
Query 5 — Summary:
Calculate average PSCE and average provisions per COVID period classification.
*/


WITH cte_period AS
(
SELECT date, code, value,
	CASE
		WHEN date < '2020-03-01' THEN 'Pre-COVID'
		WHEN date BETWEEN '2020-03-01' and '2021-12-31' THEN 'During-COVID'
		WHEN date >= '2022-01-01' THEN 'Post-COVID'
	END AS COVID_period
FROM sarb_monthly
)

SELECT COVID_period, ROUND(AVG(
							CASE
								WHEN code = 'KBP1347M' THEN value
								ELSE NULL
							END
							),2) AS AVG_PSCE,
					ROUND(AVG(
						CASE
							WHEN code = 'KBP1123M' THEN value
							ELSE NULL
						END
						),2) AS AVG_Provisions
FROM cte_period


GROUP BY COVID_period










