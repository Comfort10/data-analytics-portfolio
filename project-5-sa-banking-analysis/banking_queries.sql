/* 
Query 1 — Monthly trend:
Show all monthly PSCE values. Add a column showing month-on-month change.
*/

SELECT date, code, value,
	LAG(value) OVER(PARTITION BY code
						          ORDER BY date) AS month_on_month					
FROM sarb_monthly

WHERE code = 'KBP1347M'







