resource "aws_route53_zone" "primary" {
  name          = "okchaty.com"
  force_destroy = "true"
}

module "redirect" {
  source    = "../"
  namespace = "chaty"
  stage     = "prod"
  name      = "app"
  domain    = "okchaty.com"
  target    = "www.okchaty.com"
  zone_id   = "${aws_route53_zone.primary.zone_id}"
}
