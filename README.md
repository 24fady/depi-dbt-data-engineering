# DEPI dbt Data Engineering Project

An end-to-end data transformation pipeline and Data Warehouse architecture built using **dbt-core** and **SQL Server**, developed as part of the Digital Egypt Pioneers Initiative (DEPI).

## 🚀 Architecture & Lineage
The project follows modern modular data modeling practices:
- **Sources (ODS):** Raw data ingested from SQL Server (`DEPI.dbo.DEPI_data`).
- **Staging Layer:** Cleaning, casting, and renaming raw columns (including dimensions and the OBT model).
- **Data Warehouse (DWH) Layer:** 
  - Standard dimension tables mapped directly from staging (`dim_country`, `dim_date`, `dim_department`, `dim_employee`, `dim_gender`).
  - An OBT (One Big Table) staging model flowing directly into the main fact table (`fct_employees`).
- **Testing & Documentation:** Automated generic tests and custom singular assertions ensuring data integrity, complete with auto-generated dbt documentation.

## 🛠️ Tech Stack
- **Transformation Tool:** dbt-core
- **Database / Warehouse:** SQL Server (T-SQL)
- **Version Control:** Git & GitHub