FROM neo4j:3.5.3-enterprise
MAINTAINER Tilr Corp

# ENV PLUGIN_URL https://github.com/neo4j-contrib/m2/blob/master/releases/org/neo4j/neo4j-spatial/0.15.2-neo4j-2.3.4/neo4j-spatial-0.15.2-neo4j-2.3.4-server-plugin.zip?raw=true
# ENV PLUGIN_FILE neo4j-spatial-0.15.2-neo4j-2.3.4-server-plugin.zip
#
# WORKDIR /tmp
# RUN wget -q  $PLUGIN_URL -O $PLUGIN_FILE
# RUN mv $PLUGIN_FILE /var/lib/neo4j/plugins/
# RUN unzip /var/lib/neo4j/plugins/$PLUGIN_FILE -d /var/lib/neo4j/plugins/

## turn on indexing: http://chrislarson.me/blog/install-neo4j-graph-database-ubuntu
## enable neo4j indexing, and set indexable keys to name,age
# RUN sed -i "s|#node_auto_indexing|node_auto_indexing|g" /var/lib/neo4j/conf/neo4j.properties
# RUN sed -i "s|#node_keys_indexable|node_keys_indexable|g" /var/lib/neo4j/conf/neo4j.properties

COPY ./ssl/bundle.crt /ssl/neo4j.cert
COPY ./ssl/tilr_private.key /ssl/neo4j.key
