!#/bin/bash

curl -0 https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzf lab3-bundle.tar.gz
awk '!/^[[:space:]]*$/' lab3_data.tsv
tr '\t' ',' < lab3_data.tsv > lab3_data_new.csv
rows=$(($(wc -l < lab3_data_new.csv) - 1))
echo "Rows of data (excluding header): $rows"
tar -czf converted-archive.tar.gz lab3_data_new.csv
