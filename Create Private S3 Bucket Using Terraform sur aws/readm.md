# Terraform - Create Private S3 Bucket on AWS

## 📝 Description
As part of the data migration process, the Nautilus DevOps team is creating several S3 buckets on AWS.  
This project provisions a **private S3 bucket** using Terraform with **Block Public Access enabled** to ensure data security.

- **Bucket Name:** `xfusion-s3-8354`  
- **Region:** `us-east-1`  
- **Access:** Private (all public access blocked)  

---

## 📂 Files
- `main.tf` → Contains the Terraform configuration to create and secure the S3 bucket.

---

## ⚙️ Resources Created
1. **AWS S3 Bucket** (`aws_s3_bucket`):  
   Creates an S3 bucket named `xfusion-s3-8354`.

2. **AWS S3 Bucket Public Access Block** (`aws_s3_bucket_public_access_block`):  
   Ensures the bucket blocks **all forms of public access**.

---

## 🚀 How to Deploy

### 1. Navigate to the Terraform working directory
```bash
cd /home/bob/terraform

2. initialize Terraform
terraform init

3. Validate the configuration
terraform validate

4. Apply the configuration
terraform apply -auto-approve

🔒 Security

The bucket is fully private.

Public ACLs and policies are blocked.

Only authorized IAM users/roles can access the bucket.

✅ Expected Result

An S3 bucket named xfusion-s3-8354 will be created in the us-east-1 region.

Public access will be fully restricted, making it a secure private storage solution.