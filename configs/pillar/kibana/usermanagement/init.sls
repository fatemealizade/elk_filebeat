#!jinja|yaml|gpg

admin_user:
  elastic_user: elastic
  elastic_password: Aa123456

users:
  - username: user
    full_name: user
    email: user@user.com
    roles: NOC,kibana_admin
    password: 1234

  - username: test
    full_name: test
    email: test@test.com
    roles: admin
    password: 1234
 
