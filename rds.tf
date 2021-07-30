#Create aws mysql rds instance
resource "aws_db_instance" "Database_Instance" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = var.db_engine_version
  instance_class         = var.rds_instance_class
  availability_zone      =   "${var.aws_region}${var.aws_region_az}"
  port                   = 3306
  #vpc_security_group_ids = [aws_security_group.rds_sg.id]
  vpc_security_group_ids     = ["${aws_security_group.sg_rds.id}"]
  identifier             = var.db_identifier
  name                   = var.db_identifier
  username               = var.db_username
  password               = var.db_password
  max_allocated_storage  = 100
  publicly_accessible    = true
  skip_final_snapshot    = true
  multi_az               = false
  #rds_storage_encrypted = false
  parameter_group_name   = aws_db_parameter_group.DB_Parameter_Group.name

  tags  =   {
    "Owner"               =   var.owner
    "Name"                =   "${var.owner}-RDS"
  }
}
 
resource "aws_db_parameter_group" "DB_Parameter_Group" {
  name   = "magento-parameter-group"
  family = var.parameter_family
 
  parameter {
    name  = "log_bin_trust_function_creators"
    value = 1
  }
  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}