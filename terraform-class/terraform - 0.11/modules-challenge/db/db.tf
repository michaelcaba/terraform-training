resource "aws_instance" "db" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"

    tags = {
        Name = "DB"
    }
}

output "DB private IP" {
    value = "${aws_instance.db.private_ip}"
}