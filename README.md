# elastic-apm-server

[![Docker Automated buil](https://img.shields.io/docker/automated/playdingnow/elastic-apm-server.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/elastic-apm-server/)
[![Docker Build Statu](https://img.shields.io/docker/build/playdingnow/elastic-apm-server.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/elastic-apm-server/builds/)
[![Docker Pulls](https://img.shields.io/docker/pulls/playdingnow/elastic-apm-server.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/elastic-apm-server)

elastic-apm-server dockerfile

# Remarks
 - The default secret_token have been changed
   - xxVpmQB2HMzCL9PgBHVrnxjNXXw5J7bd79DFm6sjBJR5HPXDhcF8MSb3vv4bpg44
   - so you should put the default token in the agent config, if use this image directly
   - change it with your our token
     - pull this repo, `git clone https://github.com/yidinghan/elastic-apm-server.git`
     - change secret_token in the [reference file](https://github.com/elastic/apm-server/blob/master/apm-server.reference.yml)
     - build one, `docker build -t elastic-apm-server:dev .`

# For compose file

Here are somewhat different from the original [reference file](https://github.com/elastic/apm-server/blob/master/apm-server.reference.yml)

```yml
apm-server:
  host: "0.0.0.0:8200"
  shutdown_timeout: 15s
  secret_token: xxVpmQB2HMzCL9PgBHVrnxjNXXw5J7bd79DFm6sjBJR5HPXDhcF8MSb3vv4bpg44
output.elasticsearch:
  hosts: ["elasticsearch:9200"]
setup.dashboards.enabled: true
setup.kibana:
  host: "kibana:5601"
logging.to_files: false
```