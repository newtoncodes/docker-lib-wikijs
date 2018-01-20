FROM newtoncodes/node:9.x

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y git curl
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /wiki
RUN cd /wiki && curl -sSo- https://wiki.js.org/install.sh | bash


COPY entrypoint.sh /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["bash"]

#VOLUME ["/wiki/config.yml"]
EXPOSE 80
