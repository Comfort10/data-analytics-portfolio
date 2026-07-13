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
Follow these steps to set up the local database and populate the tables with the cleaned dataset:

1. **Create the Database Schema:**
   * Open **SQL Server Management Studio (SSMS)** and connect to your local server instance.
   * Open and execute the script located at `/sql/setup.sql` to create the target database and build the necessary table structure.

2. **Load the Cleaned Data:**
   * Right-click your newly created database in the Object Explorer and navigate to **Tasks** > **Import Data** to launch the **SSMS Import and Export Wizard**.
   * Select **Flat File Source** and browse to the cleaned CSV data file located in the `/data` directory.
   * Set the destination to your local SQL Server instance and map the source file columns to the target database table schema.
   * Complete the wizard to load the rows into the database.
