resource "aws_s3_bucket" "assets" {
  bucket = "acme-storage-${var.env}"
}