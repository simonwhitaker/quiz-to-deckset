#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail
set -o noclobber

curl -sSf https://saturday-quiz.herokuapp.com/api/quiz | jq -r -f quiz.jq
