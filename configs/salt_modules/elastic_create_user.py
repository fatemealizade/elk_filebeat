import json
import salt
import requests
import jinja2

def request():
    for user in __pillar__['users']:
      url = "http://192.168.33.21:9200/_security/user/"+user['username']
      payload = json.dumps({
        "password": user['password'],
        "roles": user['roles'],
        "full_name": user['full_name'],
        "email": user['email'],
      })
      headers = {
        'Authorization': 'Basic ZWxhc3RpYzpBYTEyMzQ1Ng==',
        'Content-Type': 'application/json'
      }
      
      response = requests.request("POST", url, headers=headers, data=payload)

