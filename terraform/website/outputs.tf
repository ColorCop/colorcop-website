output "certificate_arn" {
  value = aws_acm_certificate_validation.cert_validation.certificate_arn
}
output "domain_name" {
  value = aws_s3_bucket_website_configuration.bucket.website_endpoint
}

output "origin_id" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}