cat <<EOF > 08_drop_ddl.sql
DROP TABLE batch_processing_file;
DROP TABLE batch_processing;
DROP TABLE location;
DROP TABLE region;
EOF