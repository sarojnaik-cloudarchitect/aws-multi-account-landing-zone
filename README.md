# AWS Multi Account Landing Zone (Terraform)
Implemented Simulated AWS multi-account architecture using Terraform

## Overview
Simulated multi-account AWS architecture using Terraform with separate dev and prod environments.

## Constraint
Kept setup minimal to stay within free tier limits
Faced issue with provider configuration initially, fixed after adjusting module structure.

## Architecture
- Separate VPC per environment
- Reusable Terraform modules
- Provider separation for environment isolation
- Remote state using S3 and DynamoDB to enable shared state management and prevent concurrent execution issues.

## Design Decisions
- Created reusable terraform module for VPC to avoid duplicating code for dev and prod
- Separate CIDR blocks to avoid conflicts
- Avoided NAT Gateway to reduce cost
- Simulated multi-account using provider alias(dev,prod)
- Chose module based design to avoid duplication across environments
- Kept infrastructure minimal but aligned with real enterprise patterns like environment isolation and remote state management

## Limitations
- Full AWS Organizations and Control Tower not implemented due to cost constraints
- Assume role based multi account access simulated

## Future Improvements
- Add IAM cross-account roles
- Implement CI/CD pipeline
- Add monitoring and logging
