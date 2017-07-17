# Changelog

## 0.0.1 (Unreleased)

* Added support for `{extends "foo.html"}`
* Added support for `{block foo}`, `{block name=foo}`, and the `prepend` and `append` options
* Added support for short assignments like `{$foo="bar"}` (translated to `{% set ... %}`)
* Changed the parser to consider `{` surrounded by whitespace to not open a template tag
