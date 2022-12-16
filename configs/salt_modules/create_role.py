import requests
import json


def request():
   
   for role in __pillar__['roles']:
     url = "http://192.168.33.21:5601/api/security/role/"+role['rolename']
     if ( role['rolename'] == 'admin' or role['rolename'] == 'NOC'):
        payload = json.dumps({
            "elasticsearch": {
              "cluster" : role['elastic_privileges'],
              "indices" : [{
                  "names": role['indices'],
                  "privileges": role['privileges']
              }]
            },
            "kibana": [
              {
                "base": ["all"],
                "feature": {
                },
                "spaces": [
                  "default"
                ]
              }
            ]
        })
     else:
        payload = json.dumps({
          "elasticsearch": {
            "cluster": role['elastic_privileges'],
            "indices": [
              {
               "names": role['indices'],
               "privileges": role['privileges']
              }
            ]
          },
          "kibana": [
            {
              "base": [],
              "feature": {
                "discover": [role['discover_access']],
                "visualize": [role['visualize_access']],
                "dashboard": [role['dashboard_access']],
                "dev_tools": [role['dev_tools_access']],
                "advancedSettings": [role['advanceSettings_access']],
                "indexPatterns": [role['indexPatterns_access']],
                "graph": [role['graph_access']],
                "apm": [role['apm_access']],
                "maps": [role['maps_access']],
                "canvas": [role['canvas_access']],
                "infrastructure": [role['infrastructure_access']],
                "logs": [role['logs_access']],
                "uptime": [role['uptime_access']]
                },
              "spaces": [
                "default"
              ]
            }
          ]
        })
     headers = {
       'kbn-xsrf': 'true',
       'Authorization': 'Basic ZWxhc3RpYzpBYTEyMzQ1Ng==',
       'Content-Type': 'application/json'
     }
     
     response = requests.request("PUT", url, headers=headers, data=payload)
