resource "aws_security_group" "sg_ec2" {
  name          =   "${var.owner}-Security-Group"
  description   =   "Allowing ssh, http and https traffic"
  #vpc_id        =   aws_vpc.default.id
  ingress {
    from_port   =   22
    to_port     =   22
    protocol    =   "tcp"
    description =   "SSH"
    cidr_blocks =   ["0.0.0.0/0"]
  }
 
  ingress {
    from_port   =   80
    to_port     =   80
    protocol    =   "tcp"
    description =   "HTTP"
    cidr_blocks =   ["0.0.0.0/0"]
  }

  ingress {
    from_port   =   443
    to_port     =   443
    protocol    =   "tcp"
    description =   "HTTPS"
    cidr_blocks =   ["0.0.0.0/0"]
  }
 
  egress {
    from_port   =   0
    to_port     =   0
    protocol    =   "-1"
    cidr_blocks =   ["0.0.0.0/0"]
  }
}