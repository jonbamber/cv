variable "domain_name" {
  type = string
}

provider "aws" {}

terraform {
  backend "s3" {}
}

data "aws_s3_bucket" "website" {
  bucket = var.domain_name
} 

resource "aws_s3_bucket_object" "cv" {
  for_each = fileset(path.module, "*.pdf")

  bucket       = data.aws_s3_bucket.website.id
  key          = each.value
  source       = each.value
  acl          = "public-read"
  content_type = "application/pdf"
  etag         = filemd5(each.value)
}
