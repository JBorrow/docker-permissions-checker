FROM debian

COPY script.sh script.sh

ENTRYPOINT ["/bin/bash", "/script.sh"]
CMD []
