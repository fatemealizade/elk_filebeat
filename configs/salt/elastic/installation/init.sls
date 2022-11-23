~/elasticsearch.deb:
  file.managed:
    - source: salt://elastic/repo/elasticsearch.deb
    - user: root

install elasticsearch:
  cmd.run:
    - name: dpkg -i /root/elasticsearch.deb
    - user: root
    - group: root

/etc/elasticsearch/jvm.options:
  file.managed:
    - source: salt://elastic/files/jvm.options
    - user: root
