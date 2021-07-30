#provider.tf file
 
provider "aws" {
  profile    =  "default"
  region     =  var.region
  shared_credentials_file = "/Users/haseebmemon/.aws/credentials"
}  