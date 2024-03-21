output "distribution_id" {
  value = aws_cloudfront_distribution.distribution.id
  description = "Cloudfront distribution ID.  This is used for invalidation"
}
