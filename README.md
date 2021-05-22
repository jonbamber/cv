# cv

This is LaTeX CV is written using the [`altacv` class](https://github.com/liantze/AltaCV).

## Usage

The following environment variables are used:

|||
|--|--|
| `AWS_ACCESS_KEY_ID` | AWS access key ID |
| `AWS_SECRET_ACCESS_KEY` | AWS secret access key |
| `AWS_REGION` | AWS region |
| `TERRAFORM_STATE_BUCKET` | S3 bucket for Terraform state file (object prefix is set using the repository name) |
| `WEBSITE` | Website address inserted into CV |
| `EMAIL` | Email address inserted into CV |

A CirceCI `config.yaml` file is included to:

* fetch the necessary LaTeX class file
* replace sensitive variables placeholders
* compile CV TeX file to PDF
* store the PDF as a CircleCI artifact
* `main` branch only:
  * push the PDF to S3 for use with a [static website](https://github.com/jonbamber/personal_website)


The CV can be compiled manually through:

```
latexmk -pdf
```
