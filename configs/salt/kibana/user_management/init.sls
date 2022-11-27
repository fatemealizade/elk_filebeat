create user in kibana:
  cmd.script:
    - name: create_user_role.sh
    - source: salt://kibana/files/create_user_role.sh
    - template: jinja
