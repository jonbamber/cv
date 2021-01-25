# cv

This is LaTeX CV is written using the [`altacv` class](https://github.com/liantze/AltaCV).

## Usage

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
