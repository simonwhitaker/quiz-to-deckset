#!/bin/sh

set -o nounset
set -o errexit
set -o pipefail
set -o noclobber

JQ=/usr/local/bin/jq

curl -sSf https://saturday-quiz.herokuapp.com/api/quiz | $JQ -r -f $(dirname $0)/quiz.jq
