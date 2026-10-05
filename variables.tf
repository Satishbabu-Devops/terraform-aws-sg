variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sg_name" {  # * Ned to pass the variable values for sure its not optional it is mandatory
  type = string
}

variable "sg_tags" {
  type = string
  default = {}    # * This is not mandatory it is option if required can be passed but its optional
}