FROM docker.elastic.co/apm/apm-server:6.1.1
COPY apm-server.reference.yml /usr/share/apm-server/apm-server.yml
COPY apm-dashboard.json /usr/share/apm-server/kibana/default/dashboard/apm-dashboard.json
USER root
RUN chown apm-server /usr/share/apm-server/apm-server.yml
USER apm-server