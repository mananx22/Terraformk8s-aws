# ----- ROOT variable.tf

variable "aws_region" {
  default = "ap-south-1"
}

variable "access_ip" { type = string }

# ---- db variables
variable "db_name" {
  type = string

}
variable "db_user" {
  type      = string
  sensitive = true

}
variable "db_pass" {
  type      = string
  sensitive = true

}