#!/bin/bash
PASS=123456
ID=$(mysql -u root -p$PASS guests -s -N -e 'SELECT MAX(id) FROM guest_info WHERE DATE(visit_date)=DATE(SUBDATE(NOW(),1));')
sqoop import --connect jdbc:mysql://localhost/guests --username root --password $PASS --table guest_info -m 2 --split-by id --target-dir /tmp/data_staging/guest_info --fields-terminated-by '\001' --incremental append --check-column id --last-value $ID
