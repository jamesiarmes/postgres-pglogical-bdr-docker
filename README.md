# PostgreSQL bidirectional replication with pglogical

This was originally developed as a proof-of-concept to be used for a live
database migration. You can use this to launch a local testing environment using
[docker compose][compose].

## Containers

Three containers are launched by this compose file:

* Two PostgreSQL containers (_primary_ and _secondary_) with pglogical installed
  and loaded.
* One pgAdmin container that can be used run queries against the databases.

## Environment variables

The credentials for the databases and pgAdmin can be configured using the
following environment variables. Note that the value of `POSTGRES_USER` will be
used for database name.

| Variable          | Default             |
|-------------------|---------------------|
| POSTGRES_USER     | postgres            |
| POSTGRES_PASSWORD | postgres            |
| PGADMIN_EMAIL     | pgadmin@example.com |
| PGADMIN_PASSWORD  | pgadmin             |

## Accessing pgAdmin

pgAdmin should be available via [localhost:8080][localhost]. Log in using the
credentials you provided or use the defaults above. Both database servers have
already been added to pgAdmin, but you will need to specify the database
password when connecting for the first time.

[compose]: https://docs.docker.com/compose/
[localhost]: http://localhost:8080
