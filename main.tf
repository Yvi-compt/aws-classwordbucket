# Create 5 S3 buckets
resource "aws_s3_bucket" "yvibuckets" {
  count  = 5
  bucket = "var.bucket_name-${count.index + 1}-12345" # Replace with a unique prefix
 # acl    = "private"

  tags = {
    Name        = "var.bucket_name ${count.index + 1}"
    Environment = "Dev"
  }
}

