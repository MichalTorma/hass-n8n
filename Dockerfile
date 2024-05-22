ARG N8N_VERSION=1.41.1
FROM docker.n8n.io/n8nio/n8n:${N8N_VERSION}
USER root
RUN apk add --no-cache --update jq bash
WORKDIR /data
COPY endpoint-hotfix.sh /tmp/endpoint-hotfix.sh
RUN /tmp/endpoint-hotfix.sh
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["bash", "/tmp/docker-entrypoint.sh"]
EXPOSE 5678/tcp
