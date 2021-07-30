############################################################################################################
## Variables for general information
############################################################################################################
variable  "access_key" {
  description   =   "AWS Access Key"
  type          =   string
  default       =   ""			#Enter AWS User Access Key
}
 
variable "secret_key" {
  description   =   "AWS Secret Key"
  type          =   string
  default       =   ""			#Enter AWS User Secret Key
}

variable  "aws_region" {
  description   =   "AWS region"
  type          =   string
  default       =   "us-east-2"
}

variable  "owner" {
  description   =   "Configuration owner"
  type          =   string
  default       =   "Project"
}

variable  "environment" {
  description   =   "Configuration environment"
  type          =   string
  default       =   "dv"
}

variable  "aws_region_az" {
  description   =   "AWS region availability zone"
  type          =   string
  default       =   "a"
}
############################################################################################################
# Variables for VPC
############################################################################################################
variable  "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
 
variable  "vpc_dns_support" {
  description = "Enable DNS support in the VPC"
  type        = bool
  default     = true
}
 
variable  "vpc_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}
############################################################################################################ 
# Variables for Security Group
############################################################################################################
variable  "sg_ingress_proto" {
  description = "Protocol used for the ingress rule"
  type        = string
  default     = "tcp"
}
 
variable  "sg_ingress_ssh" {
  description = "Port used for the ingress rule"
  type        = string
  default     = "22"
}
 
variable  "sg_egress_proto" {
  description = "Protocol used for the egress rule"
  type        = string
  default     = "-1"
}
 
variable  "sg_egress_all" {
  description = "Port used for the egress rule"
  type        = string
  default     = "0"
}
 
variable "sg_egress_cidr_block" {
  description = "CIDR block for the egress rule"
  type        = string
  default     = "0.0.0.0/0"
}
 
############################################################################################################ 
# Variables for Subnet
############################################################################################################
variable "sbn_public_ip" {
  description = "Assign public IP to the instance launched into the subnet"
  type        = bool
  default     = true
}
 
variable "sbn_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
############################################################################################################ 
# Variables for Route Table
############################################################################################################
 variable "rt_cidr_block" {
  description = "CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}
############################################################################################################ 
# Variables for Instance 
############################################################################################################
variable "instance_ami" {
  description = "ID of the AMI used"
  type        = string
  default     = "ami-00399ec92321828f5"
}
 
variable "instance_type" {
  description = "Type of the instance"
  type        = string
  default     = "t2.micro"
}
 
variable "key_name" {
  description = "SSH key name used to connect"
  type        = string
  default     = "sample"
}
 
variable "root_device_type" {
  description = "Type of the root block device"
  type        = string
  default     = "gp2"
}
 
variable "root_device_size" {
  description = "Size of the root block device"
  type        = string
  default     = "30"
}
############################################################################################################
#Variables for RDS.
############################################################################################################ 
variable "rds_instance_class" {
  description = "Type of the rds instance"
  type        = string
  default     = "db.t2.micro"
}

variable "db_engine_version" {
  description =   "Mysql Version"
  type        =   string
  default     =   "8.0.23"			#Choose any version 5.7.28, 5.7.30, 5.7.31, 8.0.20, 8.0.21, 8.0.22, 8.0.23 Recommanded to choose 8.0.x version"
}
 
variable "db_identifier" {
  default = "dev-database"			#Enter identifier only in small alphabates
}
 
variable "parameter_family" {
  default = "mysql8.0"			#Enter the parameter family according to user choose version mysql5.7, mysql8.0
}

variable "db_username" {
  description = "Type of the database username instance"
  type        = string

}
variable "db_password" {
  description = "Type of the database password instance"
  type        = string
}



#Variables use in EC2 instance.

 
variable "ami" {
  default = "ami-00399ec92321828f5"			#Enter ubuntu18.04 or ubuntu20.04 AMI
}
 
variable "type" {
  default = "t2.micro"			#Enter Instance Type (ex - t2.micro)
}
 
variable "region" {
  default = "us-east-2"			#Enter aws region code (ex - ap-south-1)
}
 
variable "pem_file" {
  description =   "Path for server pem file"
  type        =   string
  
}
 
variable "ec2_tag" {
  default = "Development"			#Give name to EC2 instance
}
