#!/bin/bash

# Get the IP address using ipconfig
export REDIS_CLUSTER_ANNOUNCE_IP=$(ipconfig getifaddr en0)

# Set the obtained IP as an environment variable
echo "export REDIS_CLUSTER_ANNOUNCE_IP=${REDIS_CLUSTER_ANNOUNCE_IP}" >> /etc/profile

# Run the original entrypoint or any other command as needed
exec "$@"
