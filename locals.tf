locals {
  common_name = "${var.project}-${var.environment}-${var.sg_name}"
  common_tags = {
    Name = local.common_name
    Project = var.project
    Environment = var.environment
    Terraform = "true"
  }
}