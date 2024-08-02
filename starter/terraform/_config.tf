terraform {
   backend "s3" {
     bucket = "udacity-terraform-luongntd1"
     key    = "terraform/terraform.tfstate"
     profile = "udacity"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-2"

   default_tags {
     tags = local.tags
   }
 }