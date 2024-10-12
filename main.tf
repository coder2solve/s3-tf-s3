## Step 1 : Create an S3 Bucket
resource "random_id" "random_hex" {
  byte_length = 8
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = format("%s-%s", var.bucket_name, random_id.random_hex.hex)
  tags = {
    Name        = "infras3"
    Environment = "QA"
  }
}
