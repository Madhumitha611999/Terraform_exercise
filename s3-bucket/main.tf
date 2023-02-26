resource "aws_s3_bucket" "example" {
  bucket = "bucketbygojo"
  acl    = "private" # change this to your desired ACL
}
