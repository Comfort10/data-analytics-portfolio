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
  statistical tables (https://www.resbank.co.za/content/dam/sarb/publications/quarterly-bulletins/download-information-from-xlsx-data-files/2026/march/01Kbp1%20Money%20and%20Banking%20March%202026.zip)
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

### Finding 1: Total Private Sector Credit Extension (PSCE)
Identified a 20.9% post-pandemic expansion in Private Sector Credit Extension (PSCE), tracking a steady market recovery from 4.3 million in mid-2022 to 5.2 million by December 2025 using SARB time-series data.

### Finding 2: Total Banking Sector Assets
Quantified a 26.8% surge in total banking sector assets during the post-COVID recovery phase, climbing from 7.1 million in July 2022 to a robust 9.0 million by December 2025, signaling a strong stabilization of the financial system

### Finding 3: Prime Lending Rate Trend
Analyzed monetary policy shifts showing a steep 325 basis point reduction in the Prime Lending Rate to a 7.00% defensive low during COVID-19, followed by a post-pandemic contractionary cycle peaking at 11.75% before stabilizing at 10.33% in late 2025
