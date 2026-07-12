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

## Repository Structure and Setup

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

## Key Code Snippet

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
  and analytical querying
- Microsoft Excel — data extraction, cleaning, and CSV preparation
- Power BI — DAX measures, Power Query, interactive dashboard and trend visualisation
- GitHub — version control and portfolio hosting


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
An analysis of the total assets in the South African banking sector reveals a story of resilience and growth. The period began with solid expansion, bulding up to about 77 million before the pandemic hit. During the height of COVID, the total assets experienced a period of stabilization, reflecting the broader economic uncertainty. This then followed by a powerful, sustained recovery, which pushed the total well past the 100 million mark by 2025. 

#### Pre-COVID
The total banking sector assets started around 5.5 million in early 2019 and showed a steady upward climbs, reaching a peak approcimately 5.8 million by the middle of 2019. Following a brief period of stabilization, the assets remained relatively consistent through late 2019 and into January 2020. A final growth surged then pushed the total to 6 million by February 2020, marking a period of robust, sustained growth.

#### During-COVID
The data demonstrates that the total banking sector assets experienced considerable volatility. After a dip dropping from around 6.6 million in April 2020 to a low of 6.4 million in April 2021, the sector saw a recovery, peaking at 6.8 million in November 2021. After a subsequent decline, the assets climbed to reach approximately 7.1 million by June 2022, reflecting a steady upward trend following the pandemic's initial impact

#### Post-COVID
The data for this final phase reveals a period of consistent and meaningful growth. Beginning at approximately 7.1 million in July 2022, the total banking sector assets steadily climbed, reaching a high of roughly 9 million by December 2025. This upward trajectory reflects a robust stabilization of the financial system and a strong resumption of growth following the initial challenges of the pandemic. 
### Prime Lending Rate Trendline

The data started in 2019 with the prime lending rate sitting at 10.25%, which then dipped significantly during the pandemic to around 7% by late 2020. Following that, we saw a steady climb back up, peaking at 11.25%, before a gradual decline toward 10.33% in late 2025. Looking ahead, the forecast suggests a further decline to 8.67% by the end of 2027. 

#### Pre-COVID
The prime rate averaged around 10.25% during the first quarter of 2019. Throughout that year, it remained relatively stable, hovering near that mark and ending the year at 10% in the fourth quarter of 2019. This shows a period where borrowing costs were generally steady following the beginning of the year. 

#### During-COVID
During the period affected by COVID-19, the prime lending rate experienced a sharp decline, dropping from 9.42% early in the pandemic down to a low of 7% by the third quarter of 2020. It remained at this 7% level for a full year, reflecting significant efforts to ease borrowing costs. By the fourth quarter of 2021, the rate began a steady upward trend, climbing to 7.17% and continuing to rise until it reached 8.08% by the second quarter of 2022. 

#### Post-COVID
In this post-COVID phase, the prime lending rate initially continued to climb, rising from around 9.25% in the third quarter of 2022 to reach a peak of 11.75% by the third quarter of 2023. After maintaining this higher level for about three quarters, the rate began gradual descent, easing to 11.67% in the third quarter of 2024. This downward trend continued, bringing the rate down to 10.33% by the fourth quarter of 2025, signaling a shift toward more accommodative monetary conditions as economic pressures slowly abated. 


## Status

🔄 In progress — SQL queries complete, Power BI dashboard complete, Findings pending
