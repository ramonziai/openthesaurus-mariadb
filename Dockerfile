FROM mariadb
MAINTAINER Ramon Ziai <ramon.ziai@uni-tuebingen.de>
ADD https://www.openthesaurus.de/export/openthesaurus_dump.tar.bz2 /docker-entrypoint-initdb.d/
WORKDIR /docker-entrypoint-initdb.d
RUN tar xjf openthesaurus_dump.tar.bz2

