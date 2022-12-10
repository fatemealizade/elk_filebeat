#!/bin/bash
{% set es_ip = "http://192.168.33.21" %}

{% for role, user in pillar.get('roles',{}).items() %}
curl --cacert /var/lib/docker/volumes/root_certs/_data/elastic-certificate.p12 --user {{ user['elastic_user'] }}:{{ user['elastic_password'] }} -X POST "{{ es_ip }}:9200/_security/role/{{user['username']}}?pretty" -H 'Content-Type: application/json' -d'
{
	"cluster": {{ user['cluster_privileges'] | list | replace("'", '"') }},
  "indices": [
    {
	    "names": {{ user['indices'] | list | replace("'", '"') }},
      "privileges": {{ user['privileges'] | list | replace("'", '"') }}

    }
  ]
}
'
{% endfor %}
