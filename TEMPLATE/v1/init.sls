{% from './macros.jinja' import relfile, debsource with context %}

# example of include relative to this one (to handle versionning)
include:
  - {{ slsdotpath }}.source
