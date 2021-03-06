#!/bin/bash

PROJECT_NAME=$1

oc new-project $PROJECT_NAME --display-name "Shared Jenkins"

oc new-app jenkins-persistent --param ENABLE_OAUTH=true --param MEMORY_LIMIT=2Gi --param VOLUME_CAPACITY=4Gi
