#!/bin/bash

set -e
set -x

cd /volume-mount/app

npm install

# Kill the NodeJS process if its running
date
echo Stopping the NodeJS process
pkill -f "node" || echo "No NodeJS process found"

# Start the NodeJS Application
date
echo Starting the NodeJS Application
npm run start >> /var/log/app.log 2>&1 &
