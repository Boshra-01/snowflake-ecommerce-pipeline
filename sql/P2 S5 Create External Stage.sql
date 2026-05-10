-- Phase 2, Step 5: Create External Stage in Snowflake

CREATE STAGE IF NOT EXISTS ECOMMERCE_DB.RAW.S3_ORDERS_STAGE
  STORAGE_INTEGRATION = S3_ECOMMERCE_INT
  URL = 's3://ecommerce-orders-syeda/orders/'
  FILE_FORMAT = ECOMMERCE_DB.RAW.CSV_FORMAT
  COMMENT = 'External stage pointing to S3 orders folder';

--Verify it works — list files from S3

  LIST @ECOMMERCE_DB.RAW.S3_ORDERS_STAGE;