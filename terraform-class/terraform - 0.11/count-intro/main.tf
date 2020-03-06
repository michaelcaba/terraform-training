resource "aws_instance" "ec2" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"

    count = 3
}