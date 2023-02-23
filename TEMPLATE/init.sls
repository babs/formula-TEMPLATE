# This file can be symlinked as another sls file to call equivalent in versionned subfolder
# Allowing to expose versionned states as in root
# ex: ln -s init.sls source.sls
# calling TEMPLATE.source will call TEMPLATE/v{formula_version}/source.sls
include:
 - {{ slsdotpath }}.v{{ salt['pillar.get']('TEPLATE:formula_version', "1") }}{{ sls[slspath|length:] }}
