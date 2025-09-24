# Terraform – Public S3 Bucket

## 📖 Description
As part of the data migration process, the Nautilus DevOps team is creating several S3 buckets on AWS.  
This Terraform configuration creates a **public S3 bucket** named **`devops-s3-22012`** in the **us-east-1** region.

The configuration:
- Creates the S3 bucket.
- Applies an **ACL (`public-read`)** to make the bucket accessible publicly.
- Disables the default **Block Public Access** settings so the bucket is actually reachable from the internet.

---

## 🛠️ Files
- `main.tf` → Terraform configuration to create the bucket and configure ACLs.

---

## 🚀 How to Use

### 1. Navigate to the working directory
```bash
cd /home/bob/terraform
