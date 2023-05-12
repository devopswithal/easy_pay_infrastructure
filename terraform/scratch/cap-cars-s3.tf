resource "aws_s3_bucket" "alb_logs" {
  bucket = "cap-alb-logs"

  tags = {
    Name        = "ALB-Logs"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.alb_logs.id
  acl    = "private"
}