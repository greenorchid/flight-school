#!/bin/sh
git clone flight-school updated-repo

cd updated-repo
echo CI checked at $(date) >> ci/ci_passed

git config --global user.email "nobody@concourse.ci"
git config --global user.name "Concourse"

git add -a ci/ci_passed
git commit -m "CI check passed."
