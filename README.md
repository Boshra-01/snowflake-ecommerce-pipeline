# Snowflake E-Commerce Data Pipeline

A cloud-based end-to-end data engineering project that builds a real-time e-commerce analytics pipeline using Snowflake, AWS S3, Snowpipe, Streams, Tasks, and SQL.

---

## Project Overview

This project simulates a modern e-commerce order processing pipeline where CSV order files are uploaded into AWS S3 and automatically ingested into Snowflake using Snowpipe. The pipeline follows a layered Medallion-style architecture consisting of RAW, STAGING, and ANALYTICS layers.

The project demonstrates:

- Automated cloud ingestion using Snowpipe
- Real-time file detection through AWS S3 event notifications
- Incremental processing using Snowflake Streams
- Workflow automation using Snowflake Tasks
- Data transformation and analytics table generation
- End-to-end cloud data engineering workflow

---

## Architecture

```text
AWS S3
   ↓
S3 Event Notification
   ↓
Snowpipe
   ↓
RAW.ORDERS
   ↓
Snowflake Stream
   ↓
Task: RAW → STAGING
   ↓
STAGING.ORDERS_CLEANED
   ↓
Task: STAGING → ANALYTICS
   ↓
Analytics Tables & Reporting Views
```

---

## Technologies Used

| Category | Technologies |
|---|---|
| Cloud Storage | AWS S3 |
| Data Warehouse | Snowflake |
| Auto Ingestion | Snowpipe |
| Data Processing | Streams & Tasks |
| Query Language | SQL |
| Architecture | Medallion Architecture |
| Event System | S3 Event Notification + SQS |
| Data Format | CSV |

---

# Project Structure

```text
snowflake-ecommerce-pipeline/
│
├── README.md
├── .gitignore
│
├── sql/
│   ├── P1 S1 Foundation_setup.sql
│   ├── P2 S3 Create Storage Integration.sql
│   ├── P2 S5 Create External Stage.sql
│   ├── P2 S6 Create Snowpipe.sql
│   ├── P2 S8 Test End-to-End Ingestion.sql
│   ├── P3 S2 Create the Stream on RAW.ORDERS.sql
│   ├── P3 S3 Create the STAGING Table.sql
│   ├── P3 S4 RAW to STAGING.sql
│   ├── P3 S5 Create Analytics Tables.sql
│   ├── P3 S6 Staging to Analytics.sql
│   ├── P3 S7 Resume Tasks and Test End-to-End.sql
│   ├── P4 S1 Load More Sample Data.sql
│   ├── P4 S2 Trigger the tasks.sql
│   ├── P4 S3 Reporting Views.sql
│   └── P4 S4 Verify the views.sql
│
├── data/
│   └── sample_orders.csv
│
├── config_templates/
│   ├── s3_read_policy_template.json
│   └── aws_trust_policy_template.json
│
└── docs/
    └── aws_s3_snowpipe_setup.md
```

# Pipeline Phases

## Phase 1 — Snowflake Foundation
Set up the Snowflake warehouse, database, schemas, CSV file format, and the RAW orders table.

## Phase 2 — S3 and Snowpipe Ingestion
Connected AWS S3 with Snowflake using Storage Integration, External Stage, Snowpipe, and S3 Event Notification to automatically load CSV files into Snowflake.

## Phase 3 — Streams and Tasks Automation
Created a Snowflake Stream to track new RAW orders and used Tasks to clean, transform, and move data into STAGING and ANALYTICS tables.

## Phase 4 — Reporting and Validation
Built reporting views and tested the full pipeline by loading additional sample data and verifying analytics results.

---

# Analytics Outputs

The pipeline creates analytics-ready tables and views for:

- Daily sales summary
- Product performance
- Customer purchase summary
- Revenue and order trends

---

# Key Concepts Used

- Snowpipe auto-ingestion
- AWS S3 event-based loading
- Snowflake Streams and Tasks
- RAW, STAGING, and ANALYTICS layers
- SQL-based data transformation
- Reporting views

---

## Future Improvements

- Add dbt for modular SQL transformations
- Build a Power BI or Tableau dashboard
- Add data quality checks for incoming files
- Automate deployment using CI/CD



