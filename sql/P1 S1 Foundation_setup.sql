-- Step 1: Create the Warehouse
CREATE WAREHOUSE IF NOT EXISTS ECOMMERCE_WH
WAREHOUSE_SIZE = 'XSMALL'
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE
COMMENT = "Warehouse for e-commerce analytics pipeline";

-- Step 2: Create the Database
CREATE DATABASE IF NOT EXISTS ECOMMERCE_DB
    COMMENT = "E-commerce order analytics pipeline";

-- Step 3: Create the Three Schemas (Medallion Layers)
CREATE SCHEMA IF NOT EXISTS ECOMMERCE_DB.RAW
    COMMENT ="Raw ingested data from S3 - untouhed";
CREATE SCHEMA IF NOT EXISTS ECOMMERCE_DB.STAGING
    COMMENT ="Cleaned and transformed data";
CREATE SCHEMA IF NOT EXISTS ECOMMERCE_DB.ANALYTICS
    COMMENT ="Aggregated tables ready for dashboards"

-- Step 4: Create the CSV File Format
CREATE FILE FORMAT IF NOT EXISTS ECOMMERCE_DB.RAW.CSV_FORMAT
TYPE = 'CSV'
FIELD_DELIMITER = ','
SKIP_HEADER = 1
FIELD_OPTIONALLY_ENCLOSED_BY ='"'
NULL_IF = ('','NULL','null')
EMPTY_FIELD_AS_NULL = TRUE
COMMENT = 'Standard CSV format for order data ingestion';

-- Checking the schema:
SHOW FILE FORMATS IN SCHEMA ECOMMERCE_DB.RAW;
DESCRIBE FILE FORMAT ECOMMERCE_DB.RAW.CSV_FORMAT;

-- Step 5: Create the RAW Landing Table
CREATE TABLE IF NOT EXISTS ECOMMERCE_DB.RAW.ORDERS
(
ORDER_ID VARCHAR(50),
CUSTOMER_ID VARCHAR(50),
CUSTOMER_NAME VARCHAR(50),
EMAIL VARCHAR(50),
PRODUCT_ID          VARCHAR(50),
PRODUCT_NAME        VARCHAR(300),
CATEGORY            VARCHAR(100),
QUANTITY            INT,
UNIT_PRICE          NUMBER(10,2),
ORDER_STATUS        VARCHAR(50),
ORDER_DATE          DATE,
SHIP_DATE           DATE,
SHIP_COUNTRY        VARCHAR(100),
PAYMENT_METHOD      VARCHAR(50),
LOADED_AT           TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP()
)
COMMENT = 'Raw e-commerce orders loaded from S3 via Snowpipe';

--Step 6: Verification Queries
-- Check warehouse exists
SHOW WAREHOUSES LIKE 'ECOMMERCE_WH';
--check the database exists
SHOW DATABASES LIKE 'ECOMMERCE_DB';
-- Check all three schemas exist
SHOW SCHEMAS IN DATABASE ECOMMERCE_DB;


-- checking region for creating a bucket in Amazon S3
SELECT CURRENT_REGION();