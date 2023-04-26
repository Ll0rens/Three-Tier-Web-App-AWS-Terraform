
data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

resource "aws_instance" "bastion" {
    ami                         = "${data.aws_ami.centos.id}"
    instance_type               = "t2.micro"
    subnet_id                   =  aws_subnet.bastion_subnet.id
    vpc_security_group_ids      = [aws_security_group.bastion_sg.id]  
    associate_public_ip_address = true
}

output "bastion_ip_address" {                            
    value = aws_instance.bastion.public_ip          
}                                                     

