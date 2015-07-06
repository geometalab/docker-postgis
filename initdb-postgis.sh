#!/bin/sh
POSTGRES="gosu postgres postgres"
# extension can't be created in single (`--single`) mode!
#$POSTGRES --single -E <<EOSQL
$POSTGRES -E <<EOSQL
CREATE EXTENSION postgis
CREATE EXTENSION postgis_topology
EOSQL
