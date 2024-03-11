terraform {
  backend "s3" {
    bucket = "vpcpeering-statefile-prajwal"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

