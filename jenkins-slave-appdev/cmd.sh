oc new-app --template=eap70-basic-s2i --param APPLICATION_NAME=tasks --param SOURCE_REPOSITORY_URL=http://gogs-bc-gogs.apps.acc.example.opentlc.com/CICDLabs/openshift-tasks-private.git --param SOURCE_REPOSITORY_REF=master --param CONTEXT_DIR=/ --param MAVEN_MIRROR_URL=http://nexus3-bc-nexus.apps.acc.example.opentlc.com/repository/maven-all-public