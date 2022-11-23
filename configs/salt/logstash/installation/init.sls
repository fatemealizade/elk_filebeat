~/logstash.deb:
  file.managed:
    - source: salt://logstash/files/logstash.yml
    - user: root
    - group: root

install logstash:
  cmd.run:
    - name: dpkg -i /root/logstash.deb
    - user: root
