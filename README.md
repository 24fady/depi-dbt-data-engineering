# 🚀 DEPI dbt Data Warehouse Project

An end-to-end data engineering project built with **dbt Core and Microsoft SQL Server** as part of the Digital Egypt Pioneers Initiative (DEPI).

## 📌 Project Overview

This project transforms raw employee data into structured, tested, and documented data warehouse models using dbt. It implements a modular transformation pipeline that separates data preparation from analytical modeling.

## ✨ Key Features

- 🧹 **Data Staging:** Clean, standardize, cast, and rename raw source columns.
- 🏗️ **Dimensional Modeling:** Build dimension tables for employees, countries, dates, departments, and genders.
- 📊 **Fact Table Development:** Transform the staging OBT (One Big Table) model into the `fct_employees` table.
- 🧪 **Data Quality Testing:** Implement generic and singular tests to validate data integrity and business rules.
- ♻️ **Reusable Macros:** Create custom dbt macros to reduce repetitive SQL logic.
- 📚 **Documentation:** Document models, columns, tests, and dependencies using dbt documentation.
- 🔗 **Lineage Tracking:** Visualize data dependencies from the source through staging to the final warehouse models.
- 🌿 **Version Control:** Manage project changes using Git and GitHub.

## 🏛️ Architecture

The project follows a modular data transformation workflow.

**Source → Staging → Data Warehouse**

- 🗄️ **Source Layer:** Employee data stored in Microsoft SQL Server.
- ⚙️ **Staging Layer:** Cleaned and standardized models, including dimension staging models and the OBT.
- 🧱 **Data Warehouse Layer:** Five dimension tables and the `fct_employees` fact table.

## 🛠️ Tech Stack

- 🔹 dbt Core
- 🔹 Microsoft SQL Server
- 🔹 SQL / T-SQL
- 🔹 YAML
- 🔹 Git & GitHub

## 🎯 Project Objectives

- Apply modular data transformation practices.
- Build a maintainable data warehouse structure.
- Enforce data quality through automated testing.
- Improve data traceability through lineage and documentation.
- Apply data engineering concepts in a practical project.

## 📂 Project Deliverables

- Staging and Data Warehouse models
- Schema YAML files and data tests
- Custom dbt macros
- Model documentation
- Data lineage graph

## 👨‍💻 Author

**Fady Sameh**

🎓 Data Engineering Trainee | Digital Egypt Pioneers Initiative (DEPI)

---

⭐ If you find this project useful, feel free to explore the repository and share your feedback.