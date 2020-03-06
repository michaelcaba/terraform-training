variable "ec2-name" {
    type = "string"
}

resource "aws_instance" "module_EC2" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"

    tags = {
        Name = "${var.ec2-name}"
    }
}