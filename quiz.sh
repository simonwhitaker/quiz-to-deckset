#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail
set -o noclobber

JQ=$(type -p jq)

# Set the preferred theme
# https://www.deckset.com/help/tutorials/using-configuration-commands.html
echo "theme: Plain Jane, 2"
echo

curl -sSf https://eaton-bitrot.koyeb.app/api/quiz | $JQ -r -f "$(dirname "$0")"/quiz.jq
