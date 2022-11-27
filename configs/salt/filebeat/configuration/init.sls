/etc/filebeat/filebeat.yml:
  file.managed:
    - source: salt://filebeat/files/filebeat.yml
    - template: jinja

restart filebeat:
  cmd.run:
    - name: systemctl restart filebeat
