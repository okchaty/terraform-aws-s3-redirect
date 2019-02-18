# www Redirect

Easily create a 301 redirect using an S3 bucket and a Route53 A record.
Terraform module which creates redirect of aws s3.

These types of resources are supported:

* [S3](https://aws.amazon.com/s3)


## Usage

```hcl
module "www_redirect" {
  source  = "github.com/okchaty/terraform-module-aws-s3-redirect"
  zone_id = "${aws_route53_zone.yourzone.zone_id}"
  domain  = "domain.com"
  target  = "www.${aws_route53_zone.yourzone.name}"
}

```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| domain | Domain name of the redirect host | string | n/a | yes |
| target | URL that should be redirected to | string | n/a | yes |
| zone\_id | Zone id | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| hosted\_zone\_id |  |
| website\_domain |  |
| website\_endpoint |  |

## Authors

Luis Mayta managed by [Luis Mayta](https://github.com/luismayta).
