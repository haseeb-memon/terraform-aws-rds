# Terraform AWS ECS + RDS

This repo contains a [Terraform](https://www.terraform.io) plan to run up an [Amazon EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) and [Amazon RDS] (https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)

Includes -

  * EC2
  * Security Group
  * RDS

### Prerequisites

* Terraform installed, recommended (>= 0.6.3). Head on over to [https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html) to grab the latest version.
* An AWS account [http://aws.amazon.com/](http://aws.amazon.com/)


###  Step 1: Install Terraform
	brew tap hashicorp/tap
	brew install hashicorp/tap/terraform
	brew update

###  Step 2: Install AWS CLI
	curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
	sudo installer -pkg AWSCLIV2.pkg -target /

###  Step 3: Get AWS Access Keys
	Access Key ID : xxxxxxxxxxxxxxxxxxxxxxxxx
	Secret Access Key : xxxxxxxxxxxxxxxxxxxxxxxxx

### Step 4: Configure AWS Credentials
	aws configure
	Access Key ID : xxxxxxxxxxxxxxxxxxxxxxxxx
	Secret Access Key : xxxxxxxxxxxxxxxxxxxxxxxxx
	region : xxxx-xx-x



For a full list of overridable variables see ```variables.tf```
edit the file as per your requiremnt

### Usage

### terraform init (to initialize terraform in any directory which we are creating)

### terraform plan (plan the sytem)

### terraform apply (apply)


