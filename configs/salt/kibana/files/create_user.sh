#!/bin/bash
{% set es_ip = "https://192.168.33.21" %}

{% for users, user in pillar.get('users',{}).items() %}
curl --cacert /var/lib/docker/volumes/root_certs/_data/es01/es01.crt --user {{ user['elastic_user'] }}:{{ user['elastic_password'] }} -X POST "{{ es_ip }}:9200/_security/user/{{ user['username'] }}?pretty" -H 'Content-Type: application/json' -d'
{
  "password" : "{{ user['password'] }}",
  "roles" : "{{ user['roles'] }}",
  "full_name" : "{{ user['full_name'] }}",
  "email" : "{{ user['email'] }}",
  "metadata" : {
    "intelligence" : 7
  }
}
'
{% endfor %}
