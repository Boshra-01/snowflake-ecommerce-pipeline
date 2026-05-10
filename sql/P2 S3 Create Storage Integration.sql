-- Phase 2, Step 3: Create Storage Integration in Snowflake
CREATE STORAGE INTEGRATION IF NOT EXISTS S3_ECOMMERCE_INT
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER ='S3'
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::295152032901:role/snowflake-ecommerce-role'
    STORAGE_ALLOWED_LOCATIONS = ('s3://ecommerce-orders-syeda/orders/');

--Action 2: Get Snowflake's credentials to update AWS
DESC INTEGRATION S3_ECOMMERCE_INT;

    