config {
    disabled_by_default = false
    format = "compact"
    force = false
    call_module_type = "all"
}

plugin "aws" {
    enabled = true
    source = "github.com/terraform-linters/tflint-ruleset-aws"
    version = "0.30.0"
}
