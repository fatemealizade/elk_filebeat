~/create_role.sh:
  file.managed:
    - source: salt://kibana/files/create_role.sh
    - template: jinja

create role in kibana:
  cmd.script:
    - name: create_role.sh
    - source: salt://kibana/files/create_role.sh
    - template: jinja
