
resource "aws_s3_bucket" "ep_cluster_state_store" {
  bucket = "ep-cluster-state-store"

  tags = local.common_tags
}

resource "aws_s3_object" "terraform_state_store" {
  bucket = "ep-cluster-state-store"
  key    = "tfstate/"
}

resource "aws_s3_bucket" "ep_lb_log_bucket" {
  bucket = "ep-lb-log-bucket"
}

resource "aws_s3_bucket_acl" "ep_lb_log_bucket_acl" {
  bucket = aws_s3_bucket.ep_lb_log_bucket.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_logging" "lb_logging" {
  bucket = aws_s3_bucket.ep_cluster_state_store.id

  target_bucket = aws_s3_bucket.ep_lb_log_bucket.id
  target_prefix = "log/"
}

resource "aws_dynamodb_table" "ep_eks_state_lock" {
  name           = "ep-cluster-state-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


