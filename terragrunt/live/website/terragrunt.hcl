include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../terraform/website/"
}

inputs = {
  env    = "live"
  domain = "colorcop.net"
}
