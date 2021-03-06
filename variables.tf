
############################
## Environment #############
############################
variable "name_prefix" {
  type        = "string"
  description = "A name to prefix every created resource with"
}

variable "region" {
  type        = "string"
  description = "The AWS region to use"
}
variable "tags" {
  type        = "map"
  description = "A map of tags to apply to all resources"
}

############################
## DR ######################
############################
variable "dr" {
  type = "string"
  description = "Set to true to build a DR cluster"
  default = "false"
}

variable "dr_region" {
  type        = "string"
  description = "The AWS Region to use for disaster recovery"
}

variable "dr_vpc_id" {
  type = "string"
  description = "The ID of the DR VPC"
}

varible "dr_alb_subnets" {

}

variable "dr_ec2_subnets" {
  
}

############################
## Networking ##############
############################
variable "vault_dns_address" {
  type        = "string"
  description = "The DNS address that vault will be accessible at"
}

variable "vault_dns_zone_id" {
  type        = "string"
  description = "The DNS zone that we need to manage"
}

variable "vpc_id" {
  type        = "string"
  description = "The ID of the VPC to use"
}

variable "alb_subnets" {
  type        = "list"
  description = "A list of subnets to launch the ALB in"
}

variable "ec2_subnets" {
  type        = "list"
  description = "A list of subnets to launch the EC2 instances in"
}

############################
## ALB #####################
############################

variable "alb_allowed_ingress_cidrs" {
  type        = "list"
  description = "A list of CIDRs to allow traffic into the ALB"
}

variable "alb_certificate_arn" {
  type        = "string"
  description = "The ARN of the certificate to use on the ALB"
}

############################
## EC2 #####################
############################
variable "ami_id" {
  type        = "string"
  description = "The ID of the AMI to use to launch Vault"
}

variable "instance_type" {
  type        = "string"
  description = "The type of instance to launch vault on"
}

variable "ssh_key_name" {
  type        = "string"
  description = "The name of the ssh key to use for the EC2 instance"
}

variable "asg_min_size" {
  type        = "string"
  description = "Minimum number of instances in the ASG"
}

variable "asg_max_size" {
  type        = "string"
  description = "Maximum number of instances in the ASG"
}

variable "asg_desired_capacity" {
  type        = "string"
  description = "Desired number of instances in the ASG"
}

############################
## S3 ######################
############################
variable "vault_resources_bucket_name" {
  type        = "string"
  description = "The name of the vault resources bucket"
}

variable "vault_data_bucket_name" {
  type        = "string"
  description = "The name of the vault data bucket"
}

############################
## DynamoDB ################
############################
variable "dynamodb_table_name" {
  type        = "string"
  description = "The name of the dynamodb table that vault will create to coordinate HA"
  default = "vault-ha-coordination"
}

############################
## Config ##################
############################
variable "vault_config" { 
  type = "string"
  description = "The base config for vault"
}

variable "consul_config" { 
  type = "string"
  description = "The base config for vault"
}

variable "vault_extra_install" {
  type = "string"
}
variable "consul_extra_install" {
  type = "string"
}

############################
## Download URLs ###########
############################
variable "vault_download_url" { 
  type = "string"
  description = "The url from which download Vault Enterprise"
  default = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/0.11.1/vault-enterprise_0.11.1%2Bent_linux_amd64.zip"
}

variable "consul_download_url" { 
  type = "string"
  description = "The url from which download Consul Enterprise"
  default = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/0.11.1/vault-enterprise_0.11.1%2Bent_linux_amd64.zip"
}


############################
## Licenses ################
############################

variable "consul_license" {
  type = "string"
  description = "The license blob for consul"
  default = ""
}

variable "vault_license" {
  type = "string"
  description = "The license blob for vault"
  default = ""
}