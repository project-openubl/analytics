#!/usr/bin/env bash

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
    mvn sonar:sonar -Pcoverage \
    -Dsonar.host.url='https://sonarcloud.io' \
    -Dsonar.pullrequest.base=master \
    -Dsonar.pullrequest.key=${TRAVIS_PULL_REQUEST} \
    -Dsonar.pullrequest.branch=${TRAVIS_PULL_REQUEST_BRANCH} \
    -Dsonar.pullrequest.provider=GitHub \
    -Dsonar.pullrequest.github.repository=ubl-analytics/analytics
fi

if [[ "$TRAVIS_PULL_REQUEST" = "false" ]]; then
    mvn sonar:sonar -Pcoverage
fi
