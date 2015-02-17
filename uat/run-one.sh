#!/bin/bash
read -p "What feature would you like to run? " featurename
echo "Starting $featurename..."
behat features/$featurename.feature -f html --out=/afs/ir/group/webservices/WWW/uat/$featurename.html
echo "Finished $featurename."

