# DVSA Setup Guide

## Prerequisites
- Non-production AWS account
- Region set to `us-east-1`
- AWS CLI v2
- curl
- jq
- Python 3

## Deployment Summary
1. Open AWS Serverless Application Repository.
2. Search for **OWASP DVSA**.
3. Allow creation of custom IAM roles and policies.
4. Provide a real admin email and unique bucket prefix.
5. Deploy the stack.
6. Open the CloudFormation outputs.
7. Copy the `WebsiteURL`.
8. Test registration, login, cart, and order flow.

## Primary AWS Services
- S3 website hosting
- API Gateway
- Lambda
- DynamoDB
- Cognito
- CloudWatch
- IAM
