
resource "aws_route53_zone" "cmd_io" {
  name = "cmd.io"
  comment = "${var._comment}"
}

// cmd.io
resource "aws_route53_record" "cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "cmd.io"
  type = "A"
  alias {
    name = "d24sdw7s6lpyet.cloudfront.net."
    zone_id = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

// www.cmd.io
resource "aws_route53_record" "www_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "www.cmd.io"
  type = "A"
  alias {
    name = "d24sdw7s6lpyet.cloudfront.net."
    zone_id = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

// alpha.cmd.io
resource "aws_route53_record" "alpha_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "alpha.cmd.io"
  type = "A"
  ttl = "300"
  records = ["35.202.110.23"]
}

// beta.cmd.io
resource "aws_route53_record" "beta_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "beta.cmd.io"
  type = "A"
  ttl = "300"
  records = ["35.194.44.84"]
}

// omega.cmd.io
resource "aws_route53_record" "omega_cmd_io" {
  zone_id = "${aws_route53_zone.cmd_io.zone_id}"
  name = "omega.cmd.io"
  type = "A"
  ttl = "300"
  records = ["138.197.52.88"]
}
