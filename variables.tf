variable "resource_group_name" {
  type = string
}

variable "deployment_version" {
  type = string
}

variable "deployment_date" {
  type = string
}
variable "primary_cluster_size" {
  type = number
  default = 1
}
variable "secondary_cluster_size" {
  type = number
  default = 1
}
