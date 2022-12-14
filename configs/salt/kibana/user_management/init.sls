~/docker-compose.yml:
  file.managed:
    - source: salt://docker/elk-docker/docker-compose.yml

~/create_user.sh:
  file.managed:
    - source: salt://kibana/files/create_user.sh
    - template: jinja

create user in kibana:
  cmd.script:
    - name: create_user_role.sh
    - source: salt://kibana/files/create_user.sh
    - template: jinja
