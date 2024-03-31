include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../terraform/website/"
}

inputs = {
  env      = "dev"
  # FIXME: need new strategy for dev/staging domain
  domain = "dev.colorcop.net"
}