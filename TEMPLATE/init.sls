# This file can be symlinked as another sls file to call equivalent in versionned subfolder
# Allowing to expose versionned states as in root
# ex: ln -s init.sls source.sls
# calling TEMPLATE.source will call TEMPLATE/v{formula_version}/source.sls
{%- set formula_name = "TEMPLATE" %}
{%- set include_path = slsdotpath ~ ".v" ~ salt['pillar.get'](formula_name ~ ':formula_version', "1") ~ sls[slspath|length:] %}
include:
  - {{ include_path }}

formula {{ include_path }}:
  test.nop:
    - require:
      - sls: {{ include_path }}
