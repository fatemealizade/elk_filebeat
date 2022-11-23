/etc/kibana/kibana.yml:
  file.managed:
    - source: salt://kibana/files/kibana.yml
    - user: root
    - group: root

restart kibana:
  cmd.run:
    - name: systemctl restart kibana
    - user: root
