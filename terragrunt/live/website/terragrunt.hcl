include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../terraform/website/"
}

inputs = {
  env      = "live"
  hostname = "colorcop.net"
}