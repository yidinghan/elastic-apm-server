FROM docker.elastic.co/apm/apm-server:6.2.4

# COPY apm-dashboards.json /usr/share/apm-server/kibana/default/dashboard/apm-dashboards.json
COPY apm-server.reference.yml /usr/share/apm-server/apm-server.yml

USER root
RUN chown apm-server /usr/share/apm-server/apm-server.yml

USER apm-server
