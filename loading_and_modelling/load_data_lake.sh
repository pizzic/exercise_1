#! /bin/bash

tail -n +2 ../source_files/Hospital\ General\ Information.csv > ./hospitals.csv
tail -n +2 ../source_files/Measure\ Dates.csv > ./measures.csv
tail -n +2 ../source_files/Readmissions\ and\ Deaths\ -\ Hospital.csv > ./readmissions.csv
tail -n +2 ../source_files/Timely\ and\ Effective\ Care\ -\ Hospital.csv > ./effective_care.csv
tail -n +2 ../source_files/hvbp_hcahps_05_28_2015.csv > ./surveys_responses.csv

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -put *.csv /user/w205/hospital_compare