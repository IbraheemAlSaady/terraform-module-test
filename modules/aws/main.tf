variable "name" {
  default = "my-bucket"
}

resource "aws_s3_bucket" "this" {
  bucket = var.name
  acl    = "private"

  tags = {
    Name        = var.name
    Environment = "Dev"
  }
}

output "id" {
  value = aws_s3_bucket.this.id
}