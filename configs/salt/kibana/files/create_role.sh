#!/bin/bash

{% for role, user in pillar.get('roles', 'filebeat).items() %}
curl --user elastic:password -X POST "{{ grains['ipv4'][2] }}:9200/_security/role/{{ }}?pretty" -H 'Content-Type: application/json' -d'
{
	"cluster": {{ pillar['roles']['filebeat_publisher']['cluster_privileges'] | list | replace("'", '"') }},
  "indices": [
    {
	    "names": "{{ pillar['roles']['filebeat_publisher']['indices'] }}",
      "privileges": {{ pillar['roles']['filebeat_publisher']['privileges'] | list | replace("'", '"') }}

    }
  ]
}
'
{% endfor %}
