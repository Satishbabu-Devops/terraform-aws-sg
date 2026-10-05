resource "aws_security_group" "main" {
  name        = local.common_name     # * roboshop-dev-component_name
  description = "Allow trafic for ${var.sg_name} for the Project ${var.project} in ${var.environment} Environment" 
  vpc_id      = var.vpc_id

  tags = merge(
    local.common_tags,
    var.sg_tags
  )

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}