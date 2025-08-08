terraform {
  backend "s3" {
    bucket         = "samy-state-bucket"
    key            = "ecs/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true 
    encrypt        = true
  }
}
