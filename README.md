# elastic-apm-server

[![Docker Automated buil](https://img.shields.io/docker/automated/playdingnow/elastic-apm-server.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/elastic-apm-server/)
[![Docker Build Statu](https://img.shields.io/docker/build/playdingnow/elastic-apm-server.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/elastic-apm-server/builds/)
[![Docker Pulls](https://img.shields.io/docker/pulls/playdingnow/elastic-apm-server.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/elastic-apm-server)

elastic-apm-server dockerfile

# For compose file

Here are somewhat different from the original [reference file](https://github.com/elastic/apm-server/blob/master/apm-server.reference.yml)

```yml
apm-server:
  host: "0.0.0.0:8200"
  shutdown_timeout: 15s
output.elasticsearch:
  hosts: ["elasticsearch:9200"]
setup.dashboards.enabled: true
setup.kibana:
  host: "kibana:5601"
logging.to_files: false
```