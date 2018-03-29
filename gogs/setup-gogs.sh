#!/bin/bash

PROJECT_NAME=$1

oc new-project $PROJECT_NAME --display-name "Shared Gogs"

oc new-app postgresql-persistent --param POSTGRESQL_DATABASE=gogs --param POSTGRESQL_USER=gogs --param POSTGRESQL_PASSWORD=gogs --param VOLUME_CAPACITY=4Gi -lapp=postgresql_gogs

oc new-app wkulhanek/gogs:11.34 -lapp=gogs

oc create -f ./pvc.yaml

oc set volume dc/gogs --add --overwrite --name=gogs-volume-1 --mount-path=/data/ --type persistentVolumeClaim --claim-name=gogs-data

oc expose svc gogs

oc get route gogs