# Installing Neo4j with Docker

## dev:
docker run --name neo4j-server-dev -p 7473:7473 -p 7474:7474 -v $HOME/neo4j/data:/data -e NEO4J_AUTH=neo4j/dbsdevpassword  --restart unless-stopped -d tilr/tilr-neo4j-spatial:2.3.4

## staging:
docker run --name neo4j-server -p 7473:7473 -p 7474:7474 -v $HOME/neo4j/data:/data -e NEO4J_AUTH=neo4j/dbstagingpassword --restart unless-stopped -d tilr/tilr-neo4j-spatial:2.3.4

## test:
docker run --name neo4j-server -p 7473:7473 -p 7474:7474 -v $HOME/neo4j/data:/data -e NEO4J_AUTH=neo4j/dbtestpassword --restart unless-stopped -d tilr/tilr-neo4j-spatial:2.3.4

## bi:
docker run --name neo4j-server -p 7473:7473 -p 7474:7474 -v $HOME/neo4j/data:/data -e NEO4J_AUTH=neo4j/dbbipassword --restart unless-stopped -d tilr/tilr-neo4j-spatial:2.3.4

# Note:
7474 - http connection
7473 - https connection
