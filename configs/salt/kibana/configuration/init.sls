/etc/kibana/kibana.yml:
  file.managed:
    - source: salt://kibana/files/kibana.yml
    - template: jinja

restart kibana:
  cmd.run:
    - name: systemctl restart kibana
    - user: root
