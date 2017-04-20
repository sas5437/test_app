#!/bin/bash
deploy_dir=/app
echo $(date) - Starting after_install.sh
cd $deploy_dir && docker build -t $DEPLOYMENT_ID .
echo $(date) - Finished after_install.sh
