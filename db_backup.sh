export MARIADB_ROOT_PASSWORD=shop_name_plate
docker-compose exec mariadb mysqldump -uroot -p${MARIADB_ROOT_PASSWORD} --all-databases > db_backup/mariadb-dump-$(date +%F_%H-%M-%S).sql