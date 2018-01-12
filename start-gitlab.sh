#!/bin/bash
# this script executes gitlab-runner in a new screen if it is not running yet

v=`screen -ls | grep GITLABRUNNER`
if [ ! -z "$v" ]; then
   echo "Gitlab already running, use 'screen -rD -S GITLABRUNNER' to check the monitor"
   exit 1
fi

/home/bplim/scripts/start-gitlab-core.sh.x
echo "Started Gitlab runner 'screen -rD -S GITLABRUNNER' to check the monitor"
