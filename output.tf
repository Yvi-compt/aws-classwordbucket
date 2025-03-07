# Output the bucket names
output "bucket_names" {
  value = aws_s3_bucket.buckets[*].yvibucket
}
