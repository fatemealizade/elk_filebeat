roles:
  filebeat_publisher:
    elastic_user: elastic
    elastic_password: Aa123456 
    username: filebeat_publisher
    cluster_privileges: 
      - manage
      - monitor
    indices: ["filebeat-*"]
    privileges: 
      - monitor
      - manage
      - view_index_metadata
      - create_doc
      - create
      - write
      - read
      - create_index

  logstash_publisher:
    elastic_user: elastic
    elastic_password: Aa123456
    username: logstash_publisher
    cluster_privileges:
      - manage
      - monitor
    indices: 
      - elk_fb_*
      - kibana_sample_*
    privileges:
      - monitor
      - manage
      - read
