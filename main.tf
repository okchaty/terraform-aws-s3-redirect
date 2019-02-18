resource "aws_route53_record" "www-redirect" {
  zone_id = "${var.zone_id}"
  name    = "${var.domain}"
  type    = "A"

  alias {
    name                   = "${aws_s3_bucket.www-redirect.website_domain}"
    zone_id                = "${aws_s3_bucket.www-redirect.hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_s3_bucket" "www-redirect" {
  bucket = "${var.domain}"
  acl    = "private"

  website {
    redirect_all_requests_to = "${var.target}"
  }
}
