variable "AWS_ACCESS_KEY" {
  type = string
}
variable "AWS_SECRET_KEY" {
  type = string
}
variable "AWS_REGION" {
  type = string
}
variable "AWS_PROJECT_NAME" {
  type = string
}
variable "AWS_AVAILABILITY_ZONE_1" {
  type = string
}
variable "AWS_AVAILABILITY_ZONE_2" {
  type = string
}
variable "AWS_AVAILABILITY_ZONE_3" {
  type = string
}
variable "AWS_CIDR_BLOCK_VPC" {
  type = string
}
variable "AWS_CIDR_BLOCK_PUBLIC_SUBNET_1" {
  type = string
}
variable "AWS_CIDR_BLOCK_PUBLIC_SUBNET_2" {
  type = string
}
variable "AWS_CIDR_BLOCK_PUBLIC_SUBNET_3" {
  type = string
}
variable "AWS_CIDR_BLOCK_PRIVATE_SUBNET_1" {
  type = string
}
variable "AWS_CIDR_BLOCK_PRIVATE_SUBNET_2" {
  type = string
}
variable "AWS_CIDR_BLOCK_PRIVATE_SUBNET_3" {
  type = string
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
variable "AMIS_UBU_1604" {
  type = map
  default = {
    us-east-1 = "ami-08bc77a2c7eb2b1da"
    us-east-2 = "ami-xxxxxxxxxxxxxxxxx"
  }
}
variable "WORK_IP_ADDRESS" {
  type = string
}
