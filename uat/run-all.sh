#!/bin/bash
FILES=features/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  behat $f
done
