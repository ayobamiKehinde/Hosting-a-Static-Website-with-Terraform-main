variable "s3_bucket_id" {
  description = "The ID of the S3 bucket"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate"
  type        = string
}

variable "domain" {
  description = "The domain name for the CloudFront distribution"
  type        = string
}