# Static Website Deployment on AWS using Terraform

## Objective
This project aims to create an AWS infrastructure to host a static website using Terraform. The infrastructure includes AWS S3 for storing website files, CloudFront for content delivery, Route 53 for domain name management, IAM roles and policies for security, API Gateway for handling HTTP requests, and SSL certificates for secure connections.

## Prerequisites
- AWS Account
- Domain name registered in Route 53

## Deployment Steps
1. **Set Up AWS EC2 Instance:**
   - Launch an EC2 instance with Ubuntu Server 20.04 LTS.
   - Connect to the instance using SSH.

2. **Install Terraform on EC2:**
   - Update the package repository and install dependencies.
   - Add the HashiCorp GPG key and repository.
   - Install Terraform.
   - Verify the installation.

3. **Clone Project Repository:**
   - Create a project directory and set up the file structure.
   - Copy the provided Terraform configuration into respective files.

4. **Initialize and Apply Terraform Configuration:**
   - Run `terraform init`.
   - Run `terraform apply` and follow the prompts.

5. **Verify the Deployment:**
   - Access the deployed website using the provided URL.

## Outputs
- `website_url`: The URL of the deployed static website.
- `api_url`: The URL of the API Gateway endpoint.