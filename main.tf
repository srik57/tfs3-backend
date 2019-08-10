provider "aws"{

	region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "srikanth-s3-tfbucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "example"{
	ami = "ami-078ba39c4a35d4be8"
	instance_type = "t2.micro"
	security_groups = ["tf-test1"]
	key_name = "tf-ubuntu-1"
	tags = {
    Name = "Tomcat-prac"
  }
	
}