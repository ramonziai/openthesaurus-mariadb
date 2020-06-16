# openthesaurus-mariadb
Docker image built on the [mariadb image](https://hub.docker.com/_/mariadb) containing latest [OpenThesaurus](https://www.openthesaurus.de) database. Useful for looking up German synonyms/hypernyms in NLP applications.

To use, run the following (substitute user/password and db data):

`docker run --name openthesaurus -e MYSQL_ROOT_PASSWORD=root-password -e MYSQL_DATABASE=db-name -e MYSQL_USER=db-user -e MYSQL_PASSWORD=db-pass -d -p 3306:3306 ramonziai/openthesaurus-mariadb`

After that, OpenThesaurus is available at `localhost:3306` in database `db-name` and can be accessed as `db-user` with password `db-pass`. You can stop the container using `docker stop openthesaurus` and start it again with `docker start openthesaurus`.

You may find [DKPro JOTL](https://github.com/dkpro/dkpro-jotl) and/or [py-openthesaurus](https://github.com/Aid91/py_openthesaurus) (skip sections about database setup) helpful in accessing and using the database programmatically.
