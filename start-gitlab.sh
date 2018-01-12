#!/bin/bash
# this script executes gitlab-runner in a new screen if it is not running yet

screen -ls | grep GITLABRUNNER >& /dev/null
exitcode=$?
if [ $exitcode == 0 ]; then
   echo "Gitlab already running, use 'screen -rD -S GITLABRUNNER' to check the monitor"
   exit 1
fi

echo Starting Gitlab Runner
sudo gitlab-runner start
screen -S "GITLABRUNNER" -d -m gitlab-runner run
echo "Gitlab runner started, use 'screen -rD -S GITLABRUNNER' to check the monitor"
