#!/bin/bash

if command -v podman &> /dev/null
then
    COMMAND="podman build . --format docker --tag"
elif command -v docker &> /dev/null
then
    COMMAND="docker build . --tag"
else
    echo "Could not find the 'podman' or 'docker' command: is one of them installed?"
    exit 1
fi

for tag in sciserver-base sciserver-delta
do
    pushd essentials/3.0/${tag}
    ${COMMAND} ${tag}
    popd
done

