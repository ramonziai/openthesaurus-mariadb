# openthesaurus-mariadb-docker
Docker image built on mariadb with latest OpenThesaurus database.

To use, run the following (substitute user/password and db data):

`docker build -t ramonziai/openthesaurus-mariadb-docker ./`

`docker run --name openthesaurus -e MYSQL_ROOT_PASSWORD=root-password -e MYSQL_DATABASE=db-name -e MYSQL_USER=db-user -e MYSQL_PASSWORD=db-pass -d -p 3306:3306 ramonziai/openthesaurus-mariadb-docker`

After that, you can stop the container using `docker stop openthesaurus` and start it again with `docker start openthesaurus`.
