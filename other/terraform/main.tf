provider "aws" {
  region = "eu-west-1"
}

data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS ENA*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # Canonical
}

resource "aws_subnet" "subnet" {
  vpc_id                  = "vpc-84ae9be2"
  cidr_block              = "172.31.31.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "mat-cloudera"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "matkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDSX7h6W/yg5HpPd7Us1BknpbC9QB5QP0nnFHDRiOk1vzzAOPkXhVk3MxGdUG225NtlnRdP+swwlE4UqS/Mh+jCn0spunUlQZmqC8++hKb8xjNLw6G7NGPaMHWu4QOvcvQdF/tNObAAjWlDixFLNu7z48jrCXpt+zIyQ49SYIDCOCKDDBSszBRI1XAe4BZ5Hr4jPQ9ih/MDLQGU0HHYgPADNULiA+XIYEzbS7JuSseCntcsDCuoqUdzwY9HIXxSY+KQ80ZkGft81b2N1zvMVc/vLCWzW7ajd+SN+RRtcdLLbG8PPvmo89FijFaT00otQ0jds37CIXxSLBE7HQFfOd5"
}               

resource "aws_instance" "koinstance" {
  count = 5

  ami                         = "${data.aws_ami.centos.id}"
  instance_type               = "m5.xlarge"
  key_name                    = "${aws_key_pair.key.key_name}"
  subnet_id                   = "${aws_subnet.subnet.id}"
  associate_public_ip_address = true
  security_groups = ["sg-0a2aa85b2f6717eb6"]
  root_block_device {
    volume_size = 60
  }
  tags = {
    Name = "mat-cloudera"
  }
}

# 91.222.71.98