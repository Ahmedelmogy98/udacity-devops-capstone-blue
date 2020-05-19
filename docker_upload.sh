#!/usr/bin/env bash

# STEP-01:
# ESTABLISH DOCKER PATH
dockerpath=ahmedbahaa9873/udacity-devops-capstone-blue

# STEP-02:
# AUTHENTICATE DOCKER IMAGE
echo "Docker ID and Image: $dockerpath"
docker login --username ahmedbahaa9873
# TAG DOCKER IMAGE
docker tag blueImage $dockerpath

# STEP-03:
# PUSH DOCKER IMAGE
docker push $dockerpath
