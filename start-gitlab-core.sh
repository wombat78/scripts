#!/bin/bash
# this script executes gitlab-runner in a new screen if it is not running yet

sudo gitlab-runner start
screen -S GITLABRUNNER -d -m gitlab-runner run
echo started gitlab
