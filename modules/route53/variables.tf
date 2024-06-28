variable "domain" {
  description = "The domain name"
  type        = string
}

variable "zone_id" {
  description = "The Route 53 hosted zone ID"
  type        = string
}

variable "cloudfront_domain_name" {
  description = "The CloudFront domain name"
  type        = string
}

variable "cloudfront_zone_id" {
  description = "The CloudFront hosted zone ID"
  type        = string
}