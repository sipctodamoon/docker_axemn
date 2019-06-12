FROM jleoshao/axemn

ENV VERSION 0.1

COPY entrypoint.sh /usr/local/bin/axemn.sh

RUN chmod +x /usr/local/bin/axemn.sh

ENTRYPOINT ["/usr/local/bin/axemn.sh"]
