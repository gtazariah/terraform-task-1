    provider "aws" {
      region ="ap-south-1"
      alias = "indian"
    }

    provider "aws" {
      region = "us-east-1"
      alias="usa-east"
    }

    resource "aws_instance" "india" {
        provider=aws.indian
      ami="ami-02d26659fd82cf299"
      instance_type = "t2.micro"
    }

    resource "aws_instance" "usa" {
        provider=aws.usa-east
      ami ="ami-0360c520857e3138f"
      instance_type = "t2.micro"
    }