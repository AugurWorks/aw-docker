FROM kibana:latest

RUN apt-get update && apt-get install -y netcat

COPY entry.sh /tmp/entry.sh
RUN chmod +x /tmp/entry.sh

RUN kibana plugin --install elastic/sense

CMD ["/tmp/entry.sh"]
