variable "admin_ip" {
  type    = string
  default = "0.0.0.0/0"
}

variable "availability_zone_a" {
  type    = string
  default = "eu-west-1a"
}
variable "availability_zone_b" {
  type    = string
  default = "eu-west-1b"
}

variable "app_name" {
  type    = string
  default = "PythonApp"
}

variable "app_repo" {
  type    = string
  default = "https://github.com/Ll0rens/Three-Tier-Web-App-AWS-Terraform"
}

variable "database_name" {
  type    = string
  default = "DemoDayDB"
}

variable "database_user" {
  type    = string
  default = "root"
}

variable "database_password" {
  type    = string
  default = "00000000"
}

