#By this script ElasticIP is created
resource "aws_eip" "EC2_Instance_IP" {
    instance    =   aws_instance.EC2_Instance.id
    vpc         =   true

    tags  =   {
      "Owner"   =   var.owner
      "Name"    =   "${var.owner}-instance-ip"
    }
    #depends_on = [ module.vpc.vpc_id, module.vpc.igw_id ]
}

output "ec2instanceip" {
  value = aws_eip.EC2_Instance_IP.public_ip
}
