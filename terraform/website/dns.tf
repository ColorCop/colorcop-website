resource "aws_route53_record" "mx_verification" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "@"
  type    = "MX"
  ttl     = 3600
  records = ["10 ms21173179.msv1.invalid"]
}

# main A record alias to the Cloudfront hostname
resource "aws_route53_record" "www_a" {
  zone_id         = data.aws_route53_zone.main.zone_id
  name            = var.domain
  type            = "A"
  allow_overwrite = true

  alias {
    name                   = aws_cloudfront_distribution.distribution.domain_name
    zone_id                = aws_cloudfront_distribution.distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

# www alias because some people might type www.domain.com
resource "aws_route53_record" "www_a2" {
  zone_id         = data.aws_route53_zone.main.zone_id
  name            = local.www_domain
  type            = "A"
  allow_overwrite = true

  alias {
    name                   = var.domain
    zone_id                = data.aws_route53_zone.main.zone_id
    evaluate_target_health = false
  }
}
