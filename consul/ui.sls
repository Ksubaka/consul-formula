nginx:
  ng:
    lookup:
      package: nginx-extras
    servers:
      managed:
        consul.ksubaka.io:
          enabled: True
          config:
            - server:
              - server_name: consul.ksubaka.io
              - listen: 80
              - allow: all
              - deny: all
              - location /:
                - proxy_pass: http://localhost:8500/