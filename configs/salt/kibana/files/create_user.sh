#!/bin/bash
{% set es_ip = "http://192.168.33.21" %}

{% for users, user in pillar.get('users',{}).items() %}
curl --user {{ pillar['admin_user']['elastic_user'] }}:{{ pillar['admin_user']['elastic_password'] }} -X POST "{{ es_ip }}:9200/_security/user/{{ users }}?pretty" -H 'Content-Type: application/json' -d'
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
