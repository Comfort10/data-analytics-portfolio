/* 
Query 1 — Monthly trend:
Show all monthly PSCE values. Add a column showing month-on-month change.
*/

SELECT date, code, value,
	LAG(value) OVER(PARTITION BY code
						          ORDER BY date) AS month_on_month					
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

