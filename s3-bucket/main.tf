resource "aws_s3_bucket" "example" {
  bucket = "example-bucket"
  acl    = "private" # change this to your desired ACL
}
