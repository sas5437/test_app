#!/bin/bash
tmp_dir=/tmp/app
deploy_dir=/app
archive_dir=/archives
echo $(date) - Starting after_install.sh
echo Moving files in $deploy_dir to $archive_dir
mv $deploy_dir/* $archive_dir
echo $(ls $deploy_dir)
echo $(ls $archive_dir)
echo Extracting from $tmp_dir into $deploy_dir
tar xzvf $tmp_dir
mv $tmp_dir/*.tar.gz $deploy_dir
echo Docker load
docker load < $deploy_dir/*tar.gz
echo $(docker ps)
echo $(date) - Finished after_install.sh
