#!/bin/bash

sudo apt-get install postgresql postgresql-client

sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres'";
sudo -u postgres psql -c "COMMENT ON ROLE postgres IS 'PostgreSQL default user.'";

# sudo -u postgres createuser -s $USER
sudo -u postgres psql -c "CREATE USER $USER CREATEDB";
sudo -u postgres psql -c "COMMENT ON ROLE $USER IS 'Desktop user.'";

createdb $USER

# -h=localhost -p=5432 -u=$USER -d=database_name
# psql -h localhost -U postgres -c "CREATE DATABASE arch_test;"
# psql -h localhost -U postgres arch_test < db.sql

exit 0;
