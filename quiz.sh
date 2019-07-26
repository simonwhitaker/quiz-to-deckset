#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail
set -o noclobber

curl -sSf https://saturday-quiz-api.herokuapp.com/quiz | jq -r -f quiz.jq
