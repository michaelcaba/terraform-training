resource "aws_instance" "myec2" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"

    tags = {
        Name = "Web Server"
    }

    depends_on = ["aws_instance.db"]
}

resource "aws_instance" "db" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}