terraform {
  backend "s3" {
    bucket = "my-unique-bucket-xyz-1234"
    region = "eu-north-1"
  }
}
