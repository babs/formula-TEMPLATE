{% from slspath ~ '/macros.jinja' import debsource with context %}

{{
  debsource(
    "salt-latest",
    "http://repo.saltproject.io/salt/py3/debian/" ~ salt['grains.get']('osmajorrelease') ~ "/amd64/latest",
    salt['grains.get']('oscodename'),
    "main",
    "saltstack.gpg",
  )
}}

# Example of requirements
TEMPLATE requirements:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - ca-certificates
      - curl
      - software-properties-common
      - gnupg2
