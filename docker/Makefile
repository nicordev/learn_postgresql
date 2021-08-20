POSTGRESQL_SERVICE = 'my-postgresql-database'

start:
	docker-compose up --detach --remove-orphans --force-recreate

psql:
	docker-compose exec $(POSTGRESQL_SERVICE) bash -c "psql --username postgres --dbname postgres"