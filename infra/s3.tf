resource "aws_s3_bucket" "assets" {
  bucket = "acme-storage-keepcoding-${var.env}"
}
