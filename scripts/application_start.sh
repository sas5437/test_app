#!/bin/bash
deploy_dir="/app"
echo $(date) - Starting application_start.sh
cd $deploy_dir && docker run -d --name appcontainer -p 80:80 $DEPLOYMENT_ID
echo $(date) - Finished application_start.sh
