FROM neo4j:3.5.1
MAINTAINER Tilr Corp

ENV PLUGIN_URL https://github.com/neo4j-contrib/m2/blob/master/releases/org/neo4j/neo4j-spatial/0.26.2-neo4j-3.5.2/neo4j-spatial-0.26.2-neo4j-3.5.2-server-plugin.jar?raw=true
ENV PLUGIN_FILE neo4j-spatial-0.26.2-neo4j-3.5.2-server-plugin.jar

WORKDIR /plugins
RUN wget -q  $PLUGIN_URL -O $PLUGIN_FILE
# COPY $PLUGIN_FILE plugins/neo4j-spatial.jar

## turn on indexing: http://chrislarson.me/blog/install-neo4j-graph-database-ubuntu
## enable neo4j indexing, and set indexable keys to name,age
# RUN sed -i "s|#node_auto_indexing|node_auto_indexing|g" /var/lib/neo4j/conf/neo4j.properties
# RUN sed -i "s|#node_keys_indexable|node_keys_indexable|g" /var/lib/neo4j/conf/neo4j.properties

COPY ./ssl/bundle.crt /ssl/neo4j.cert
COPY ./ssl/tilr_private.key /ssl/neo4j.key

COPY ./conf/neo4j.conf /conf/neo4j.conf
