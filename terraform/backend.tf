terraform {
  backend "s3" {
    bucket         = "samy-state-bucket"   # must exist
    key            = "ecs/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"                # must exist
  }
}
