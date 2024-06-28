provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "certificate" {
  source  = "./modules/certificate"
  domain  = var.domain
  zone_id = var.route53_zone_id
}

module "cloudfront" {
  source          = "./modules/cloudfront"
  s3_bucket_id    = module.s3_bucket.bucket_id
  certificate_arn = module.certificate.arn
  domain          = var.domain
}

module "route53" {
  source                  = "./modules/route53"
  domain                  = var.domain
  zone_id                 = var.route53_zone_id
  cloudfront_domain_name  = module.cloudfront.domain_name
  cloudfront_zone_id      = module.cloudfront.zone_id
}

module "iam" {
  source       = "./modules/iam"
  s3_bucket_id = module.s3_bucket.bucket_id
}

module "api_gateway" {
  source = "./modules/api_gateway"
}
