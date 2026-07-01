# SA Banking Sector Post-COVID Performance Analysis

SQL and Power BI analysis of South Africa's banking sector health 
across the COVID-19 period (2019–2025) using South African Reserve 
Bank (SARB) monthly time series data.

## Overview

This project analyses how South Africa's banking sector was impacted 
by COVID-19 and whether it has recovered to pre-pandemic levels. 
Using six key banking indicators from the SARB, the analysis tracks 
credit extension, deposit growth, lending rates, loan provisions, 
and total sector assets across three distinct periods; pre-COVID, 
during-COVID, and post-COVID.


## Dataset

- Source: South African Reserve Bank (SARB) — Money and Banking 
  statistical tables
- Period: January 2019 — December 2025 (monthly)
- Records: 505 rows across 6 series codes
- Variables:

| Series Code | Variable |
|---|---|
| KBP1347M | Total Private Sector Credit Extension (PSCE) |
| KBP1008M | Total Deposits |
| KBP1132M | Total Banking Sector Assets |
| KBP1166M | Total Loans and Advances |
| KBP1123M | Specific Provisions — Loans (NPL proxy) |
| KBP1486M | Prime Overdraft Rate |

## Tools Used

- SQL Server (T-SQL) via SSMS — database creation, data loading, 
  and analytical querying
- Microsoft Excel — data extraction, cleaning, and CSV preparation
- Power BI — DAX measures, Power Query, interactive dashboard and trend visualisation
- GitHub — version control and portfolio hosting

## SQL Concepts Demonstrated

String functions, CASE statements, subqueries, window function
(LAG), CTEs

## Key Findings


### Total Private Sector Credit Extension Trendline
An analysis of credit extension in the South African banking sector reveals that overall, the market experienced consistent growth leading up to early 2020. After the initial stability in 2020 and 2021, the market saw a consistent upward growth trend, climbing to ~ 60 million by 2025 from ~ 48 million, clearly showing a recovery and expansion phase following the pandemic's disruptions. 

#### Pre-COVID
During the Pre-COVID phase, from January 2019 to February 2020, credit extension in the South African banking sector showed a pattern of steady, modest growth. It started slowly, hovering around 3.6 million, experienced an increase to about 3.7 million by April 2019, and then climbed steadily to peak at roughly 3.9 million by February 2020, indicating a period of consistent, stable economic activity. 

#### During-COVID
During the "During-COVID" phase, credit extension experienced significant volatility. After an initial dip in September 2020, the market showed signs of recovery, reaching 4 million in February 2021 and continuing a gradual climb to hit 4.2 million by June 2022. This reflects a period of instability followed by gradual stabilization and growth amidst the pandemic's disruptions. 

#### Post-COVID
For the post-COVID phase, from July 2022 through December 2025, the data shows a period of consistent, steady growth, climbing from approximately 4.3 million to an impressive 5.2 million by 2025. This indicates a sustained recovery and expansion in credit extension for the banking sector.  
### Total Banking Sector Assets Trendline

### Prime Overdraft Rate Trendline

## Files

- `sarb_banking_data.csv` — cleaned SARB data extract
- `sarb_description.csv` — description of SARB codes
- `banking_setup.sql` — database and table creation
- `banking_queries.sql` — analytical query sets
- `banking_dashboard.pbix` — Power BI dashboard

## Status

🔄 In progress — SQL queries complete, Power BI dashboard complete, Findings pending
