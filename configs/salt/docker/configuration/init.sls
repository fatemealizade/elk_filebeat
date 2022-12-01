copy docker-elk to minion:  
  file.recurse:
    - name: /root/
    - source: salt://docker/docker-elk

/root/elasticsearch/config/elasticsearch.yml:
  file.managed:
    - source: salt://elastic/files/elasticsearch.yml
    - template: jinja

/root/kibana/config/kibana.yml:
  file.managed:
    - source: salt://kibana/files/kibana.yml
    - template: jinja

/root/logstash/config/logstash.yml:
  file.managed:
    - source: salt://logstash/files/logstash.yml
    - template: jinja

/root/filebeat/config/filebeat.yml:
  file.managed:
    - source: salt://filebeat/files/filebeat.yml
    - template: jinja

#~/create_user.sh:
#  cmd:
#    - source: salt://kibana/files/create_user.sh
#    - template: jinja

run docker compose:
  cmd.run:
    - name: /usr/bin/docker-compose up -d
    - user: root
    - group: root
