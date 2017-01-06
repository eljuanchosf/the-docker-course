#!/bin/bash

# Create the container by downloading the busybox Linux image and execute the command '/bin/echo "Hello world"'
# then automatically remove the container (--rm) when exits.
docker run --rm busybox:latest /bin/echo "Hello world"
