
# Terraform VPC Creation

This project creates an AWS VPC named **xfusion-vpc** in the **us-east-1** region using Terraform.

## Files
- **main.tf**: Contains Terraform configuration to create the VPC.

## Requirements
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- AWS CLI installed and configured with valid credentials
- An AWS account with permissions to create VPC resources

## Steps to Use

1. Clone or navigate to this directory:
   ```bash
   cd /home/bob/terraform
````

2. Initialize Terraform (downloads required providers):

   ```bash
   terraform init
   ```

3. Validate configuration:

   ```bash
   terraform validate
   ```

4. Preview the changes:

   ```bash
   terraform plan
   ```

5. Apply the configuration to create the VPC:

   ```bash
   terraform apply -auto-approve
   ```

6. To destroy the VPC when no longer needed:

   ```bash
   terraform destroy -auto-approve
   ```

## Notes

* The VPC will be created with CIDR block `10.0.0.0/16`.
* DNS support and hostnames are enabled.
* The VPC will be tagged with the name **xfusion-vpc**.
