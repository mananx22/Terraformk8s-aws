# ----- ROOT locals.tf

locals {
  vpc_cidr = "10.124.0.0/16"
}

locals {
  security_groups = {
    public = {
      name = "manan_sg"
      ingress = {
        ssh = {
          from        = 22
          to          = 22
          protocol    = "tcp"
          cidr_blocks = [var.access_ip]
        }
      }
    }
  }
}