roles:
  - role1: filebeat_publisher
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

  - role2: logstash_publisher
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
