~/logstash.deb:
  file.managed:
    - source: salt://logstash/repo/logstash.deb
    - user: root
    - group: root

install logstash:
  cmd.run:
    - name: dpkg -i /root/logstash.deb
    - user: root
