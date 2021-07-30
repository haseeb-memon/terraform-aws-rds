resource "aws_security_group" "sg_rds" {
  name          =   "${var.owner}-RDS-Security-Group"
  description   =   "Allowing RDS + RDS"
  #vpc_id        =   aws_vpc.default.id
  
  ingress {
    from_port   =   3306
    to_port     =   3306
    protocol    =   "tcp"
    description =   "HTTP"
    security_groups = ["${aws_security_group.sg_ec2.id}"]
  }

  egress {
    from_port   =   0
    to_port     =   0
    protocol    =   "-1"
    cidr_blocks =   ["0.0.0.0/0"]
  }
}