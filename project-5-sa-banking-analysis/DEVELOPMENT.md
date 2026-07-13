## Development & Local Setup Guide

This guide outlines the system requirements and technical steps necessary to configure and run this data analytics environment locally from scratch.

### 1. Prerequisites
To run the SQL scripts and view the interactive dashboards, ensure you have the following software installed:
* **Database Engine:** Microsoft SQL Server (Express or Developer Edition)
* **Integrated Development Environment (IDE):** SQL Server Management Studio (SSMS)
* **Business Intelligence & Reporting:** Power BI Desktop
* **Data Preparation:** Microsoft Excel (with Power Query enabled)

---

### 2. Database Infrastructure & Ingestion
Follow these steps to build the relational database schema, load the raw tables, and align the dataset keys:

1. **Initialize the Database and Schema:**
   * Open **SQL Server Management Studio (SSMS)** and connect to your local instance.
   * Open and execute the script located at `sql/01_setup.sql`. This will create the `BankingSectorDB` database and establish the structured `sarb_description` and `sarb_monthly` tables with their primary and foreign key constraints.

2. **Load Data via the SSMS Import Wizard:**
   * Right-click `BankingSectorDB` in the Object Explorer and select **Tasks** > **Import Data**.
   * Choose **Flat File Source** and browse to your raw CSV files in the `/data` directory.
   * Set your local SQL Server instance as the destination, and map the source data files directly into your pre-configured target tables.

3. **Standardize Data Keys:**
   * Once the tables are populated, open and execute the script located at `sql/02_update.sql`. 
   * This updates the description dataset codes to include the trailing `'M'` identifier, completely aligning them with the main transaction keys for flawless cross-table relationship mapping.
