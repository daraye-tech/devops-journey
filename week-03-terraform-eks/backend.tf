terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "my-unique-bucket-xyz-1234"
    region         = "eu-north-1"
  }
}
