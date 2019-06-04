#!/usr/bin/env bash

if [[ "$TRAVIS_PULL_REQUEST" = "false" ]]; then
    mvn sonar:sonar
fi

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
    mvn sonar:sonar \
    -Dsonar.pullrequest.base=master \
    -Dsonar.pullrequest.key=${TRAVIS_PULL_REQUEST} \
    -Dsonar.pullrequest.branch=${TRAVIS_PULL_REQUEST_BRANCH} \
    -Dsonar.pullrequest.provider=GitHub
fi
