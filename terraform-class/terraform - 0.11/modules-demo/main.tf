resource "aws_iam_user" "mainUser" {
    name = "MainUser"
}

module "ec2module" {
    source = "./ec2"
    ec2-name = "My first module"
}