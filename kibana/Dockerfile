FROM kibana:latest

RUN apt-get update && apt-get install -y netcat
COPY config/kibana.yml /opt/kibana/config/kibana.yml

RUN kibana plugin --install elastic/sense

COPY entry.sh /tmp/entry.sh
RUN chmod +x /tmp/entry.sh

CMD ["/tmp/entry.sh"]
