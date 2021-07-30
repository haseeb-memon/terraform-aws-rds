#This is use to create EC2 instance.
resource "aws_instance" "EC2_Instance" {
  ami                     =   var.instance_ami
  instance_type           =   var.instance_type
  availability_zone       =   "${var.aws_region}${var.aws_region_az}"
  key_name                =   var.key_name
  vpc_security_group_ids  =   [aws_security_group.sg_ec2.id]
  tags  =   {
    "Owner"               =   var.owner
    "Name"                =   "${var.owner}-Instance"
  }
 
  #This line of code is use to change the size of created root volume.
  root_block_device {
    delete_on_termination   =   true
    encrypted               =   false
    volume_size             =   var.root_device_size
    volume_type             =   var.root_device_type
  }
 
}

output "ec2instance" {
  value = aws_instance.EC2_Instance.public_ip
}
