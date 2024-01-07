resource "aws_instance" "instance" {
  ami                         = "ami-0aa825d61d0d52fa4"
  instance_type               = "t2.micro"
  key_name                    = "kesava"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "kesava instance"
  }
}
