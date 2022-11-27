#!/bin/bash

{% for users, user in pillar.get('users',{}).items() %}
curl --user elastic:password -X POST "{{ grains['ipv4'][2] }}:9200/_security/user/{{ user['username'] }}?pretty" -H 'Content-Type: application/json' -d'
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
