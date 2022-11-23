~/kibana.deb:
  file.managed:
    - source: salt://kibana/repo/kibana.deb
    - user: root

install kibana:
  cmd.run:
    - name: dpkg -i /root/kibana.deb
    - user: root
