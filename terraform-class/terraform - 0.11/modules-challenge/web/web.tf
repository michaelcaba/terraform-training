resource "aws_instance" "web" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.web_sg.name}"]
    user_data = "${file("./web/server-script.sh")}"

    tags = {
        Name = "web"
    }
}


