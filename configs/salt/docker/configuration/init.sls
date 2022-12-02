copy docker-elk to minion:  
  file.recurse:
    - name: /root/
    - source: salt://docker/elk-docker

/root/elasticsearch/config/elasticsearch.yml:
  file.managed:
    - source: salt://docker/elk-docker/elasticsearch/config/elasticsearch.yml
    - template: jinja

/root/kibana/config/kibana.yml:
  file.managed:
    - source: salt://docker/elk-docker/kibana/config/kibana.yml
    - template: jinja

/root/logstash/config/logstash.yml:
  file.managed:
    - source: salt://docker/elk-docker/logstash/config/logstash.yml
    - template: jinja

/root/filebeat/config/filebeat.yml:
  file.managed:
    - source: salt://docker/elk-docker/filebeat/config/filebeat.yml
    - template: jinja

run docker compose:
  cmd.run:
    - name: /usr/bin/docker-compose up -d
    - user: root
    - group: root
