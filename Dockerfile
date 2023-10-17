FROM mongo:latest

EXPOSE 27017

COPY dump/tournamentsFranceDB/ data/

CMD mongod --fork --logpath /var/log/mongodb.log; \
    mongorestore --host localhost --db tournamentsFranceDB data/; \
    mongod --shutdown; \
    docker-entrypoint.sh mongod