#!/usr/bin/env bash

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
    mvn sonar:sonar -Pcoverage \
    -Dsonar.pullrequest.base=master \
    -Dsonar.pullrequest.key=${TRAVIS_PULL_REQUEST} \
    -Dsonar.pullrequest.branch=${TRAVIS_PULL_REQUEST_BRANCH} \
    -Dsonar.pullrequest.provider='GitHub' \
    -Dsonar.pullrequest.github.repository='ubl-analytics/analytics'  \
    -Dsonar.projectKey='ubl-analytics_analytics'  \
    -Dsonar.projectName='UBL Analytics' \
    -Dsonar.links.homepage='https://github.com/ubl-analytics/analytics' \
    -Dsonar.links.ci='https://travis-ci.org/ubl-analytics/analytics' \
    -Dsonar.links.scm='https://github.com/ubl-analytics/analytics' \
    -Dsonar.links.issue='https://github.com/ubl-analytics/analytics/issues' \
    -Dsonar.host.url='https://sonarcloud.io' \
    -Dsonar.organization='ubl-analytics' \
    -Dsonar.sources='src' \
    -Dsonar.java.source='1.8' \
    -Dsonar.java.binaries='.' \
    -Dsonar.exclusions='**/*Test.java' \
    -Dsonar.test.exclusions='**/*Test.java'
fi

if [[ "$TRAVIS_PULL_REQUEST" = "false" ]]; then
    mvn sonar:sonar -Pcoverage
fi
