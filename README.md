# terraform-aws-s3-redirect [![Build Status](https://travis-ci.org/okchaty/terraform-aws-s3-redirect.svg?branch=master)](https://travis-ci.org/okchaty/terraform-aws-s3-redirect) [![Latest Release](https://img.shields.io/github/release/okchaty/terraform-aws-s3-redirect.svg)](https://travis-ci.org/okchaty/terraform-aws-s3-redirect/releases)


Terraform module to provision an AWS S3 Redirect.


---

This project is part of our comprehensive ["SweetOps"](https://okchaty.com) modules of terraform.




It's 100% Open Source and licensed under the [MIT](LICENSE).








## Usage

```hcl
  module "redirect" {
    source    = "git::https://github.com/okchaty/terraform-aws-s3-redirect.git?ref=master"
    namespace = "chaty"
    stage     = "prod"
    domain    = "chatydelivery.com"
    target    = "www.okchaty.com"
    zone_id   = "${aws_route53_zone.primary.zone_id}"
  }
```

Full working example can be found in [example](./example) folder.






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



## Help

**Got a question?**

File a GitHub [issue](https://github.com/okchaty/terraform-aws-s3-redirect/issues), send us an [email][email] or join our [Slack Community][slack].

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/okchaty/terraform-aws-s3-redirect/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or [help out](https://github.com/okchaty) with our other projects, we would love to hear from you! Shoot us an [email](mailto:hola@okchaty.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!


## Copyright

Copyright © 2018-2019 [OkChaty, LLC](https://okchaty.com)






## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Source: <https://opensource.org/licenses/MIT>






## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained and funded by [OkChaty, LLC][website]. Like it? Please let us know at <hola@okchaty.com>


### Contributors

|  [![Luis Mayta][luismayta_avatar]][luismayta_homepage]<br/>[Luis Mayta][luismayta_homepage] |
|---|

  [luismayta_homepage]: https://github.com/luismayta
  [luismayta_avatar]: https://github.com/luismayta.png?size=150


