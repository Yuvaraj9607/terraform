terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

terraform {
 backend "s3"{
    bucket = "devstatefile"
    key = "dev/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "statelock"  //create dyanmodb table in the name of statelock
  }
}
