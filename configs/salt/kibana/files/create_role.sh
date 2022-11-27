#!/bin/bash

{% for role, user in pillar.get('roles',{}).items() %}
curl --user {{ user['elastic_user'] }}:{{ user['elastic_password'] }} -X POST "{{ grains['ipv4'][2] }}:9200/_security/role/{{user['username']}}?pretty" -H 'Content-Type: application/json' -d'
{
	"cluster": {{ user['cluster_privileges'] | list | replace("'", '"') }},
  "indices": [
    {
	    "names": "{{ user['indices'] }}",
      "privileges": {{ user['privileges'] | list | replace("'", '"') }}

    }
  ]
}
'
{% endfor %}
