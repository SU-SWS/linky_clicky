#!/bin/bash
FILES=features/*
mv features/backup_migrate.feature features/z_backup_migrate.feature
for f in $FILES
do
#  echo $f
  featurename=$(echo $f | sed 's/features\///g' | sed 's/\.feature//g')
  echo "Starting $featurename..."
  behat $f -f html --out=/afs/ir/group/webservices/WWW/uat/$featurename.html
  echo "Finished $featurename."
done
mv features/z_backup_migrate.feature features/backup_migrate.feature

