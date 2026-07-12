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


## Dataset and Variables

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
| KBP1123M | Loans Provisions |
| KBP1486M | Prime Lending Rate |

## Directory Structure and Setup

```text
project-5-sa-banking-analysis/
├── data/
|   ├── sarb_raw_data.csv
|   ├── sarb_description.csv
├── sql/
│   ├── setup.sql
│   └── queries.sql
├── power-bi/
|   ├── sarb_dashboard.pbix
|   ├── screenshot-sarb-dashboard.png
├── DEVELOPMENT.md
├── Insights.md
└── README.md
```

## Technical Methodology
### 1. Data Cleaning and Transformation
- Imported raw SARB time-series data tables.
- Unpivoted monthly columns into rows to establish a clean, normalized tabular structure.
- Handled missing values and standardized date configurations (YYYY-MM-DD)

### 2. Data Ingestion (SQL Server)
- Structured the target database schema using T-SQL.
- Staged the cleaned CSV datasets into SQL Server using the SSMS Import and Export Wizard

### 3. Analytical Querying (T-SQL)
- Analysed monthly trend using LAG() window function
- Classified the COVID phases using CASE statement
## Key Code Snippet

COVID period classification:
Flagged each month as 'Pre-COVID' (before March 2020), 'During-COVID' (March 2020 — December 2021),
or 'Post-COVID' (2022 onwards).
```sql
SELECT 
    date, 
    CASE 
        WHEN date < '2020-03-01' THEN 'Pre-COVID' 
        WHEN date BETWEEN '2020-03-01' AND '2021-12-31' THEN 'During-COVID' 
        WHEN date >= '2022-01-01' THEN 'Post-COVID' 
    END AS COVID_period 
FROM sarb_monthly
GROUP BY date;
```

## Tools Used

- SQL Server (T-SQL) via SSMS — database creation, data loading, 
  and analytical querying (scripts located in the /sql subdirectory)
- Microsoft Excel — Raw data cleaning, extraction via Power Query and CSV preparation (processed files in the /data subdirectory)
- Power BI — DAX measures, Power Query, interactive dashboard and trend visualisation (file located in the /power-bi subdirectory)
- GitHub — version control and portfolio hosting


## Key Findings





## Status

🔄 In progress — SQL queries complete, Power BI dashboard complete, Findings pending
