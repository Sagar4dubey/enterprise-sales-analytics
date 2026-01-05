# Enterprise Sales & Business Performance Analytics Platform

## Overview
This project implements an automated sales analytics pipeline that processes raw CSV data using Python ETL, standardizes schemas via JSON configuration, stores data in SQLite, and visualizes insights in Power BI.

## Tech Stack
- Python (Pandas)
- SQL & SQLite
- Power BI
- ODBC
- JSON

## Features
- Automated ETL pipeline for multi-source sales data
- Configuration-driven schema mapping
- SQL-based KPIs (Revenue, AOV, Region-wise analysis)
- Interactive Power BI dashboard
- Plug-and-play onboarding of new datasets

## Dataset
Sample sales datasets including Kaggle Superstore are used for demonstration.

## How to Run
1. Place CSV files in the `data` folder
2. Update column mappings in `config/column_mapping.json`
3. Run the ETL pipeline:
   ```bash
   python etl/etl_pipeline.py

