LOAD DATA LOCAL INFILE 'absolute_file_path_to_csv.csv'
INTO TABLE tablename FIELDS
TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES (columns, list, comma, separated, mapped, to, database);
