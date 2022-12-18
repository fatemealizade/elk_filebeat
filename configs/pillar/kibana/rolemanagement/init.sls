roles:
  - rolename: admin
    elastic_privileges: 
      - all 
    indices: ["*"]
    privileges:
      - all 
    spaces: default

  - rolename: NOC
    elastic_privileges: 
      - monitor
    indices: ["*"]
    privileges:
      - view_index_metadata
      - read
    spaces: default

  - rolename: developer
    elastic_privileges: monitor
    indices: ["*"]
    privileges:
      - view_index_metadata
      - read
      - monitor
    discover_access: read
    visualize_access: read
    dashboard_access: read
    dev_tools_access: read
    advanceSettings_access: read
    indexPatterns_access: read
    graph_access: read
    apm_access: read
    maps_access: read
    canvas_access: read
    infrastructure_access: read
    logs_access: read
    uptime_access: read
    spaces: default
