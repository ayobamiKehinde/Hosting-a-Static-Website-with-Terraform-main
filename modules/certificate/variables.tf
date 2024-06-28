variable "domain" {
  description = "The domain name for the SSL certificate"
  type        = string
}

variable "zone_id" {
  description = "The Route 53 hosted zone ID"
  type        = string
}