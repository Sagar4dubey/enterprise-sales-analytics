import pandas as pd
import json
import sqlite3
import os

# ================================
# STEP 1: PROJECT PATHS
# ================================
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

DATA_DIR = os.path.join(BASE_DIR, "data")
CONFIG_DIR = os.path.join(BASE_DIR, "config")
DB_PATH = os.path.join(BASE_DIR, "enterprise.db")

# ================================
# STEP 2: LOAD JSON MAPPING
# ================================
with open(os.path.join(CONFIG_DIR, "column_mapping.json"), "r") as f:
    mappings = json.load(f)

# ================================
# STEP 3: CONNECT TO DATABASE
# ================================
conn = sqlite3.connect(DB_PATH)

# ================================
# STEP 4: PROCESS EACH COMPANY
# ================================
for company, mapping in mappings.items():

    csv_path = os.path.join(DATA_DIR, f"{company}_sales.csv")
    print(f"Reading file: {csv_path}")

    # --- Read CSV ---
    df = pd.read_csv(csv_path)

    print("Original columns:", df.columns.tolist())

    # --- Rename columns ---
    df.rename(columns=mapping, inplace=True)

    print("Columns after rename:", df.columns.tolist())

    # --- Select only required columns ---
    required_columns = list(mapping.values())
    

    # --- Add company name ---
    df["company_name"] = company

    # --- Load into database ---
    df.to_sql("fact_sales", conn, if_exists="append", index=False)

# ================================
# STEP 5: CLOSE CONNECTION
# ================================
conn.close()

print("ETL pipeline completed successfully.")
