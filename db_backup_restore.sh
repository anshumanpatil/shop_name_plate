export MARIADB_ROOT_PASSWORD=shop_name_plate
docker-compose exec -T mariadb mysql -uroot -p${MARIADB_ROOT_PASSWORD} < db_backup/mariadb-dump-2023-02-17_02-06-32.sql