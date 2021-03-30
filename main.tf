provider "aws" {
region = "us-east-1"
access_key = "AKIAJU53QYV7XAVES2GQ"
secret_key = "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"
}
module "ec2_webserver" {
    source = "/Users/munawar/Desktop/Terraform Project/modules/muna_ec2"
    ami   =  "ami-00ddb0e5626798373"
    instance_type = "t2.micro"
}
module "s3_bucket" {
  source = "/Users/munawar/Desktop/Terraform Project/modules/muna_ec2"
  bucket = "my-s3-bucket"
  acl    = "private"
  versioning = {
    enabled = true
  }

}








/* esource "aws_instance" "instance1"{
  ami           = "${var.ami}"
  instance_type = "${var.instancetype}"
  tags = {
    Name = "${var.ec2tag}"
  }
} */
/* resource "aws_iam_instance_profile" "test_profile" {
  name = "test_profile"
  role = aws_iam_role.role.name
}

resource "aws_iam_role" "role" {
  name = "test_role"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_ebs_volume" "ebs_volume1" {
  availability_zone = "${var.az}"
  size              = 6
  enabled = true

  tags = {
    Name = "ebsvolume1"
  }
} */

/* resource "aws_s3_bucket" "s3_bucketname" {
  bucket = "${var.bucketname}
  versioning {
    enabled = true
  }
} 
}














terraform {
  backend "s3" {
    access_key = "AKIAUPAQOBCE4IFBWZUW"
    secret_key = "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"
    bucket = "munaterraform1123"
    key    = "s3/terraform.tfstate"
    region = "us-east-1"
  }  
}
resource "aws_dynamodb_table" "terraformlockfile" {
  name             = "terraformlockfile"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"
  
  attribute {
    name = "LockID"
    type = "S"
  }
} */