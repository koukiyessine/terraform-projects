resource "aws_s3_bucket" "devops_bucket" {
  bucket = "devops-s3-22012"

  tags = {
    Name = "devops-s3-22012"
  }
}

# إضافة ACL لجعل البكت public
resource "aws_s3_bucket_acl" "devops_bucket_acl" {
  bucket = aws_s3_bucket.devops_bucket.id
  acl    = "public-read"
}

# إلغاء Block Public Access حتى يصبح فعلاً public
resource "aws_s3_bucket_public_access_block" "devops_bucket_block" {
  bucket = aws_s3_bucket.devops_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}