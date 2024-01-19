provider "aws" {
  region = "us-east-1" 
}

resource "aws_s3_bucket" "example-bucket" {
  bucket = "your-unique-bucket-name"  
  acl    = "private"  

  tags = {
    Name        = "example-bucket"
    Environment = "production"
  }
}
