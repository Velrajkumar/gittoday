resource "aws_instance" "free_tier_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "FreeTierEC2"
  }
}

resource "aws_s3_bucket" "free_tier_bucket" {
  bucket = "my-free-tier-bucket-12345"
  acl    = "private"
}

resource "aws_dynamodb_table" "free_tier_table" {
  name           = "FreeTierTable"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
