resource "aws_vpc" "sunday_vpc" {
    cidr_block = var.vpc_cidr
}
resource "aws_subnet" "sunday_subnet" {
    availability_zone = var.AZ
    cidr_block = var.subnetCidr
    vpc_id = aws_vpc.sunday_vpc.id
 
}
terraform {
  backend "s3" {
    bucket = "group3test"
    key    = "grp3/key.tfstate"
    region = "us-east-1"
    dynamodb_table = "hanna"
  }
}
