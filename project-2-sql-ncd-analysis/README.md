# Project 2 — SA NCD SQL Analysis: Diabetes & Hypertension Trends

SQL Server analysis of South African non-communicable disease data across four provinces (2012–2022), demonstrating end-to-end database administration and analytical querying using T-SQL.

---

## Overview

This project builds a relational database of SA public health data from scratch and applies all five core SQL analytical techniques to answer real public health questions. The analysis tracks provincial diabetes and hypertension burden over time, identifies high-risk periods and provinces, and benchmarks performance against SA's 2030 National Strategic Plan targets.

The project is relevant to health analytics, clinical data management, database administration, and government health reporting roles.

---

## Dataset

- **Source:** Published SA health surveys and IDF estimates
- **Period:** 2012 — 2022 (6 time points)
- **Provinces:** Gauteng, KwaZulu-Natal, Western Cape, Eastern Cape
- **Records:** 24 rows — one per province per time point
- **Variables:** Diabetes prevalence, hypertension prevalence, awareness, treatment, controlled rates, population

---

## Tools Used

- SQL Server (T-SQL) via SSMS — full database lifecycle from creation to querying
- GitHub — version control and project hosting

---

## SQL Concepts Demonstrated

| Concept | Applied To |
|---|---|
| String Functions — UPPER(), LEFT(), LIKE | Province name standardisation and text filtering |
| CASE Statements | Risk stratification — Low, Moderate, High diabetes risk |
| Subqueries — WHERE and FROM clause | Filtering above national and provincial averages |
| Window Functions — RANK(), DENSE_RANK(), LAG() | Provincial burden ranking and year-on-year change |
| CTEs — chained | 2022 performance vs 2030 NSP target gap analysis |

---

## Key Findings

1. **Western Cape consistently ranks first in diabetes burden across all years** — yet maintains the highest awareness rates, suggesting a paradox where screening success reveals higher prevalence rather than causing it.

2. **Year-on-year diabetes prevalence change accelerated between 2018 and 2022 across all provinces** — with Gauteng recording the sharpest single-period increase, signalling growing NCD pressure in SA's most populous province.

3. **In 2022, all four provinces showed an awareness gap of 35–42 percentage points below the 2030 NSP target of 90%** — the CTE analysis confirms that at the current rate of improvement, no province is on track to meet the 2030 commitment.

---

## Files

- `ncd_project_setup.sql` — database creation, table schema, and data insertion
- `ncd_project_queries.sql` — all 5 analytical query sets with comments

---

## Relevance to Employers

Demonstrates ability to design and administer a relational database, write complex analytical SQL, and produce findings relevant to health policy and programme monitoring — applicable to health data analyst, statistical programmer, database administrator, and research analyst roles.
