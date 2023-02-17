export MARIADB_ROOT_PASSWORD=shop_name_plate
bkp_name=$(uuidgen)
docker-compose exec mariadb mysqldump -uroot -p${MARIADB_ROOT_PASSWORD} --all-databases > db_backup/${bkp_name}.sql
echo $(date +%F_%H-%M-%S) ${bkp_name}.sql >> db_backup/backup_list.txt