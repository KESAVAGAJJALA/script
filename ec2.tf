resource "aws_instance" "instance" {
  ami                         = "ami-0d92749d46e71c34c"
  instance_type               = "t2.micro"
  key_name                    = "master"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "my public instance"
  }
}
