config {
    disabled_by_default = false
    format = "compact"
    force = false
    module = true
}
 
plugin "aws" {
    enabled = true
    source = "github.com/terraform-linters/tflint-ruleset-aws"
    version = "0.30.0"
}
