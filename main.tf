# Create 5 S3 buckets
resource "aws_s3_bucket" "yvibuckets" {
  count  = 5
  bucket = "my-unique-bucket-${count.index + 1}-12345" # Replace with a unique prefix
 # acl    = "private"

  tags = {
    Name        = "yviBucket ${count.index + 1}"
    Environment = "Dev"
  }
}

# Output the bucket names
output "bucket_names" {
  value = aws_s3_bucket.buckets[*].yvibucket
}
