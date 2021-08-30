POSTGRESQL_SERVICE = 'my-postgresql-database'
PSQL = docker-compose exec $(POSTGRESQL_SERVICE) psql --username postgres --dbname postgres

start:
	docker-compose up --detach --remove-orphans --force-recreate

stop:
	docker-compose down

psql:
	$(PSQL)

execute-sql:
	$(PSQL) --command="$(sql)"

execute-sql-file:
	$(PSQL) --file="$(file)"

bash:
	docker-compose exec $(POSTGRESQL_SERVICE) bash