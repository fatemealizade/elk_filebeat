copy docker-elk to minion:  
  file.recurse:
    - name: /root/
    - source: salt://docker/docker-elk

#~/create_user.sh:
#  cmd:
#    - source: salt://kibana/files/create_user.sh
#    - template: jinja

run docker compose:
  cmd.run:
    - name: /usr/bin/docker-compose up -d
    - user: root
    - group: root
