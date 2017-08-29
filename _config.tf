
terraform {
  backend "s3" {
    bucket = "gl-dns"
    key    = "tf.state"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
}

variable "_comment" { default = "managed by github.com/gliderlabs/dns" }
