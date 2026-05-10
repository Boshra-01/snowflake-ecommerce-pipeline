<<<<<<< HEAD
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

---

# Pipeline Phases

## Phase 1 — Foundation Setup

Created:

- Snowflake warehouse
- Database and schemas
- CSV file format
- RAW ingestion table

Main Components:

- `ECOMMERCE_WH`
- `ECOMMERCE_DB`
- `RAW`, `STAGING`, `ANALYTICS` schemas
- `RAW.ORDERS` table

SQL File:

```text
P1 S1 Foundation_setup.sql
```

---

## Phase 2 — AWS S3 + Snowpipe Integration

Configured:

- AWS S3 bucket for incoming CSV files
- IAM policies and IAM roles
- Snowflake Storage Integration
- External Stage
- Snowpipe auto-ingestion
- S3 Event Notification integration

Features:

- Automatic ingestion from S3 to Snowflake
- Event-driven pipeline architecture
- Continuous loading workflow

SQL Files:

```text
P2 S3 Create Storage Integration.sql
P2 S5 Create External Stage.sql
P2 S6 Create Snowpipe.sql
P2 S8 Test End-to-End Ingestion.sql
```

---

## Phase 3 — Streams and Tasks Automation

Built:

- Snowflake Stream for incremental tracking
- Automated transformation tasks
- Cleaned staging tables
- Analytics-ready summary tables

Features:

- Incremental CDC-style processing
- Scheduled SQL automation
- Data cleaning and normalization
- Analytics aggregation

SQL Files:

```text
P3 S2 Create the Stream on RAW.ORDERS.sql
P3 S3 Create the STAGING Table.sql
P3 S4 RAW to STAGING.sql
P3 S5 Create Analytics Tables.sql
P3 S6 Staging to Analytics.sql
P3 S7 Resume Tasks and Test End-to-End.sql
```

---

## Phase 4 — Reporting and Validation

Implemented:

- Reporting views
- Pipeline validation
- Additional sample ingestion testing

Features:

- Reporting layer creation
- End-to-end verification
- Analytics querying

SQL Files:

```text
P4 S1 Load More Sample Data.sql
P4 S2 Trigger the tasks.sql
P4 S3 Reporting Views.sql
P4 S4 Verify the views.sql
```

---

# Sample Analytics Outputs

The pipeline generates analytics tables including:

- Daily sales summary
- Product performance analysis
- Customer purchase summary
- Reporting views for BI/dashboard usage

Example insights:

- Revenue trends
- Top-selling products
- Customer lifetime value
- Order volume analysis

---

# Key Snowflake Concepts Demonstrated

- Snowpipe Auto-Ingestion
- Streams for Change Tracking
- Task Graph Automation
- External Stages
- Storage Integrations
- Warehouse Management
- Medallion Architecture
- Incremental Data Processing

---

# Future Improvements

Potential enhancements:

- dbt integration
- Airflow orchestration
- Power BI / Tableau dashboards
- Snowflake Cortex AI integration
- Data quality validation framework
- CI/CD deployment workflow
- Real-time streaming ingestion

---

# Learning Outcomes

This project demonstrates practical experience with:

- Cloud Data Engineering
- Snowflake Architecture
- AWS Integration
- Event-Driven Pipelines
- SQL Automation
- Incremental Data Processing
- Real-Time Data Workflows

---

# Author

Syeda Jannatul Boshra

M.S. Computer Science  
Texas A&M University–San Antonio

---
=======
# snowflake-ecommerce-pipeline
Snowflake e-commerce analytics pipeline with AWS S3, Snowpipe, Streams, Tasks, and SQL-based medallion architecture.
>>>>>>> 425b107e6a7ed5055b647d54736bfdd74ae4d642
