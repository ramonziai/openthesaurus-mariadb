FROM mariadb:10
MAINTAINER Ramon Ziai <ramon.ziai@uni-tuebingen.de>
RUN apt update
RUN apt install bzip2
ADD https://www.openthesaurus.de/export/openthesaurus_dump.tar.bz2 /docker-entrypoint-initdb.d/
WORKDIR /docker-entrypoint-initdb.d
RUN tar xjf openthesaurus_dump.tar.bz2

