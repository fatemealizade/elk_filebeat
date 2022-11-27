create role in kibana:
  cmd.script:
    - name: create_role.sh
    - source: salt://kibana/files/create_role.sh
    - template: jinja
