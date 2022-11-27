roles:
  filebeat_publisher:
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
    username: logstash_publisher
    cluster_privileges:
      - manage
      - monitor
    indices: ["filebeat-*"]
    privileges:
      - monitor
      - manage
