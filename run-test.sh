#!/usr/bin/env bash

echo "Starting load tests"
DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
docker run --rm \
    -v "$DIRECTORY"/config:/bzt-configs \
    -v "$DIRECTORY"/data-sources:/data-sources \
    -v "$DIRECTORY"/output:/tmp/artifacts blazemeter/taurus \
    -o settings.env.BLAZEMETER_KEY_ID=$BLAZEMETER_KEY_ID \
    -o settings.env.BLAZEMETER_KEY_SECRET=$BLAZEMETER_KEY_SECRET \
    execution.json provisioning.json scenarios.json

