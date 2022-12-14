#!jinja|yaml|gpg

admin_user:
  elastic_user: elastic
  elastic_password: Aa123456

users:
#  password: |
#    -----BEGIN PGP MESSAGE-----
#    
#    hQGMA7YdgWq27nBqAQwAoWfgbufLFToRbFcQjcvKvPcU7jrhWGkRS6lWlzaGAXOC
#    7mimmr81t4sLxzhw9Lrz5+1o2klHGTAOcgJZrJ7iCMmehi7LQ5tokari/WQbFHUh
#    6aMXcQ1PllS/uKB3MyrHLWjDZ6BvWD3TPgrKaIKpEkYYwO8O2OHxAeUQ5m1t7wuh
#    RaxqfojwQHfga8QyUjEeRn9OXohzHNIJ/imvfUjig0nE4T1iw17IA/HXhVy3BcUK
#    7tGmpnfwBJZmduO73M0jjJnkHPcSEMe362OtfxXan3r7a4VI8BVyLeXTCZnm46AF
#    KH4P+9yB5HsG+jgWw2NAfHenocxYK7t7Y+rJrUWerh6qUhnNujPaBLJ5bcDg+aGz
#    A+4DQ8zHGPZYUM+32+6J3lx3R49895TsJl5rzBUi05w/mPQI/YBa6rOxxtknMi5H
#    7zlgP3G/75+wxKX5BO4FPHWFSKR8xqsxVuzyAfVoF5BibCvylJxlAyAUM/yYhGn6
#    YRt6LTU2AZWkgkcC+uQY0lMB1NTKtKgQAtOvr6zcQ81MHUl9Rc13TmIDnlCEVfkV
#    p3LTR2ggq8g5bkTpWicwn40jKeulIf3mr1I7f7KiXrBoYLlXO9MwxB5oUMZ+PjOM
#    bNiU3Q==
#    =rwSQ
#    -----END PGP MESSAGE-----
# 
    
  - username: filebeatpublisher
    full_name: mr filebeat
    email: mr.filebeat@yahoo.com
    roles: filebeat_publisher
    password: password

  - username: logstashpublisher
    password: password
    full_name: mr logstash
    email: mr.logstash@yahoo.com
    roles: kibana_admin,logstash_publisher
 
  - username: shivash
    password: password
    full_name: shiva shams
    email: shiva.shams@yahoo.com
    roles: filebeat_publisher 
 
  - user4: Amin
    username: Amin 
    password: password
    full_name: Amin Taheri
    email: a.taheri@yahoo.com
    roles: kibana_admin,viewer,HAproxy 
 
  - user4: Morteza
    username: Morteza 
    password: password
    full_name: Morteza Omidian
    email: m.o@yahoo.com
    roles: HAproxy
