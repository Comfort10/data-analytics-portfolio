# Project 3 — SA NHI Provincial Readiness Scorecard

Excel-based multi-indicator gap analysis assessing South Africa's nine provinces against NHI implementation readiness criteria across infrastructure, disease burden, and service delivery dimensions.

---

## Overview

South Africa's National Health Insurance (NHI) is the most significant health reform in the country's post-apartheid history. Its success depends on provinces having adequate health infrastructure, manageable disease burden, and functional service delivery systems. This project asks a critical policy question:

> *"How ready are South Africa's provinces for NHI implementation — and which provinces face the greatest gaps?"*

The scorecard translates complex, multi-dimensional health system data into a single, actionable readiness score per province — the kind of executive-level analysis relevant to NHI implementation planners, health economists, and provincial health departments.

---

## Dataset

- **Source:** Published SA health statistics — DHIS2, Stats SA, NDOH Annual Reports
- **Provinces covered:** All 9 South African provinces
- **Dimensions analysed:** 3 (Infrastructure, Disease Burden, Service Delivery)
- **Indicators:** 9 (health facilities per 100k, doctors per 100k, nurses per 100k, health expenditure per capita, medical aid coverage, HIV prevalence, TB treatment success, immunisation rate, antenatal care coverage, maternal mortality)

---

## Tools Used

- Microsoft Excel — normalisation formulas, XLOOKUP, PivotTables, conditional formatting, RAG dashboard

---

## Excel Skills Demonstrated

- **Normalisation formulas** — converting raw indicator values to comparable 0–10 scores using MIN/MAX scaling
- **Cross-sheet XLOOKUP** — pulling values from Raw Data sheet into Scorecard calculations
- **AVERAGE formulas** — aggregating normalised scores into dimension scores and overall readiness
- **IF formulas** — RAG status classification (Green/Amber/Red) based on overall score thresholds
- **Conditional formatting** — colour-coded RAG status across the scorecard
- **PivotTables** — summarising performance by province and dimension
- **Dashboard design** — single-page executive scorecard with bar chart and summary table

---

## Key Findings

1. **Western Cape and Gauteng score highest on overall NHI readiness** — driven by stronger infrastructure density and higher medical aid coverage providing a financial buffer during transition. However both provinces face above-average diabetes burden that will strain NHI chronic disease budgets.

2. **Limpopo, Eastern Cape, and Mpumalanga score lowest across all three dimensions simultaneously** — infrastructure deficit, high disease burden, and weaker service delivery metrics compound each other, indicating these provinces will require the most targeted NHI investment and support.

3. **Medical aid coverage below 15% in six of nine provinces signals near-total NHI dependency** — the majority of South Africans have no alternative to the public health system, making NHI implementation not optional but existential for equitable health access.

---

## Files

- `SA_NHI_Readiness_Scorecard.xlsx` — full workbook including raw data, normalised scores, scorecard, and dashboard

---

## Relevance to Employers

Demonstrates ability to design a structured analytical framework, apply advanced Excel modelling, and produce policy-relevant findings — applicable to health policy analyst, M&E specialist, health economist, and government advisory roles.
