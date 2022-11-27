#!/bin/bash

curl --user {{ pillar['kibana']['elastic_username'] }}:{{ pillar['kibana']['elastic_password'] }} -X POST "{{ grains['ipv4'][2] }}:9200/_security/user/{{ pillar['kibana_users']['username'] }}?pretty" -H 'Content-Type: application/json' -d'
{
  "password" : "{{ pillar['kibana_users']['password'] }}",
  "roles" : "{{ pillar['kibana_users']['roles'] }}",
  "full_name" : "{{ pillar['kibana_users']['full_name'] }}",
  "email" : "jacknich@example.com",
  "metadata" : {
    "intelligence" : 7
  }
}
'

