/etc/logstash/conf.d/pipeline.conf:
  file.managed:
    - source: salt://logstash/files/pipeline.conf
