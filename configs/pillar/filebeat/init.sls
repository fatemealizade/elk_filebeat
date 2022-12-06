filebeat:
  container_log_path: /var/lib/docker/container/*/*.log
  elastic_host: https://192.168.33.21
  enabled: true
  filebeat_user: elastic
  filebeat_pass: Aa123456
