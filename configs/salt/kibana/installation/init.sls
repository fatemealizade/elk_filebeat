~/kibana.deb:
  file.managed:
    - source: salt://repo/kibana.deb
    - user: root

install kibana:
  cmd.run:
    - name: dpkg -i /root/kibana.deb
    - user: root
