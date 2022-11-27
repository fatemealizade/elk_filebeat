~/filebeat.deb:
  file.managed:
    - source: salt://filebeat/repo/filebeat.deb
    - user: root

Install filebeat:
  cmd.run:
    - name: dpkg -i filebeat.deb
    - user: root
