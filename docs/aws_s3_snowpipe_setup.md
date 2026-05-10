# AWS S3 and Snowpipe Setup

This document summarizes the AWS and Snowflake configuration used for the e-commerce data pipeline.

## Purpose

AWS S3 is used as the external cloud storage location for incoming order CSV files. Snowflake connects to this S3 location using a storage integration, external stage, and Snowpipe.

## S3 Bucket Structure

```text
s3://<YOUR_BUCKET_NAME>/orders/sample_orders.csv