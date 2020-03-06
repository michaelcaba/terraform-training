resource "aws_instance" "ec2" {
    ami = "ami-062f7200baf2fa504"
    instance_type = "t2.micro"

    tags = {
        Name = "Public IP"
    }
}

resource "aws_eip" "elastic_ip" {
    instance = "${aws_instance.ec2.id}"
}

output "Public IP" {
    value = "${aws_eip.elastic_ip.public_ip}"
}