variable "region" {
  type = string
}
variable  "cidr_block" {
  type = string
}
variable "subnet_cidrs" {
  type =list(string)
}

variable "subnet_name_tags" {
  type = list(string)
}
