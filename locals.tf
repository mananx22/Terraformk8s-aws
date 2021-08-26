# ----- ROOT locals.tf

locals {
  vpc_cidr = "10.123.0.0/16"
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

        http = {
          from        = 80
          to          = 80
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
      }
    }


    rds = {
      name = "rds_sg"
      ingress = {
        mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = [local.vpc_cidr]
        }
      }
    }


  }
}