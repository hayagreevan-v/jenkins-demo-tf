resource "aws_s3_bucket" "hex-s3-tf-bucket" {
  bucket = "hex-s3-tf-bucket"
  region = "us-east-1"
  tags = {
    Name = "hex-s3-tf-bucket"
  }
}