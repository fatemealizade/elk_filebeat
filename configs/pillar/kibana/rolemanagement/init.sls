roles:
  - rolename: filebeat_publisher
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

  - rolename: logstash_publisher
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

  - rolename: HAPROXY
    cluster_privileges:
      - manage
      - monitor
    indices: 
      - elk_fb_*
    privileges:
      - monitor
      - view_index_metadata
      - read
