# SA Banking Sector Post-COVID Performance Analysis

SQL and Power BI analysis of South Africa's banking sector health 
across the COVID-19 period (2019–2024) using South African Reserve 
Bank (SARB) monthly time series data.

## Overview

This project analyses how South Africa's banking sector was impacted 
by COVID-19 and whether it has recovered to pre-pandemic levels. 
Using six key banking indicators from the SARB, the analysis tracks 
credit extension, deposit growth, lending rates, loan provisions, 
and total sector assets across three distinct periods; pre-COVID, 
COVID shock, and recovery.

The analysis is relevant to financial services employers, risk 
analysts, and economic policy stakeholders monitoring SA's banking 
sector resilience.

## Dataset

- Source: South African Reserve Bank (SARB) — Money and Banking 
  statistical tables
- Period: January 2019 — January 2026 (monthly)
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
- Power BI — interactive dashboard and trend visualisation
- GitHub — version control and portfolio hosting

## SQL Concepts Demonstrated

String functions, CASE statements, subqueries, window functions 
(LAG, RANK), CTEs — all applied to real SARB financial data

## Key Findings

*To be updated upon query completion*

1. Finding 1 — *
2. Finding 2 — *
3. Finding 3 — *

## Files

- `sarb_banking_data.csv` — cleaned SARB data extract
- `sarb_description.csv` — description of SARB codes
- `banking_setup.sql` — database and table creation
- `banking_queries.sql` — analytical query sets
- `banking_dashboard.pbix` — Power BI dashboard

## Status

🔄 In progress — SQL queries complete, Power BI dashboard pending
