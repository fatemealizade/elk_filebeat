import requests
import json


def request():
   
   for role in __pillar__['roles']:
     url = "http://192.168.33.21:5601/api/security/role/"+role['rolename']
     
     payload = json.dumps({

       "elasticsearch": {
         "cluster": role['cluster_privileges'],
         "indices": [
           {
             "names": role['indices'],
             "privileges": role['privileges']
           }
         ]
       },
       "kibana": [
         {
           "base": [
             "all"
           ],
           "feature": {},
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
