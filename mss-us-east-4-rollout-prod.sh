#!/bin/bash

mss_pod_app="mss-pod-docker"

sleep 20s

if [[ $(kubectl -n mss-us-east-0-prod get deploy ${mss_pod_app} --timeout 5s) = *"successfully rolled out"* ]];
then
	echo "Deployment ${mss_pod_app} was successful"
    exit 0;
else
	echo "RollBack Since Latest Deployment Failed"
	kubectl -n mss-us-east-0-prod rollout undo deploy ${mss_pod_app}
	echo "Deployment ${mss_pod_app} Rollout is Success"
fi

#
# if [[ $(kubectl -n default rollout status deploy ${deploymentName} --timeout 5s) != *"successfully rolled out"* ]];
# then
# 	echo "Deployment ${deploymentName} Rollout has Failed"
#     kubectl -n default rollout undo deploy ${deploymentName}
#     exit 1;
# else
# 	echo "Deployment ${deploymentName} Rollout is Success"
# fi
