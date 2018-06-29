FROM debian:stretch

USER root

RUN apt-get update
RUN apt-get -y install dehydrated

COPY ["hook.sh", "run.sh", "/"]
COPY ["config", "/etc/dehydrated/"]

RUN chmod +x /start.sh
ENTRYPOINT ["/run.sh"]
