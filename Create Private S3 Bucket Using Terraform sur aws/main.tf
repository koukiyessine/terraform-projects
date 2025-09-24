# إنشاء الـ S3 bucket
resource "aws_s3_bucket" "xfusion_s3_8354" {
  bucket = "xfusion-s3-8354"

  tags = {
    Name        = "xfusion-s3-8354"
    Environment = "Development"
    Purpose     = "Private Storage"
  }
}

# تفعيل Block Public Access (يجعل البكت خاص بالكامل)
resource "aws_s3_bucket_public_access_block" "xfusion_s3_8354_block" {
  bucket = aws_s3_bucket.xfusion_s3_8354.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}