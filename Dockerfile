FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.5
MAINTAINER Patrick Laurin <plaurin@inocybe.ca>
#USER root
RUN elasticsearch-plugin remove --purge x-pack
USER elasticsearch
# Below locale envs required for curator cli to work 
ENV LC_ALL=en_US.utf-8
ENV LANG=en_US.utf-8
