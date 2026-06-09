data "aws_vpc" "network" {
  tags = {
    Name = var.vpc_name
  }
}
data "aws_subnet" "subnet" {
  vpc_id            = data.aws_vpc.network.id
  availability_zone = "eu-west-1a"
  filter {
    name   = "map-public-ip-on-launch"
    values = ["true"]
  }
}

data "aws_security_group" "security_group" {
  vpc_id = data.aws_vpc.network.id
  name   = var.security_group_name
}

data "aws_ami" "latest_amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "cmtr-ygbit6f1-ec2" {
  ami                         = data.aws_ami.latest_amazon_linux_2.id
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.ssh_key.key_name
  subnet_id                   = data.aws_subnet.subnet.id
  vpc_security_group_ids      = [data.aws_security_group.security_group.id]
  associate_public_ip_address = true

  tags = {
    Project = var.project_name
  }
}
