#!/usr/bin/env bash
# Docker container endpoint.
# Author Ron. A @mehuaniket


# Move into the working directory.
cd /var/app

# Run our processes.
echo "start.sh: Starting honcho:"
echo "    honcho --procfile environments/$ENV_NAME/Procfile --env environments/$ENV_NAME/.env start"
echo "    loading..."
honcho --procfile "environments/$ENV_NAME/Procfile" --env "environments/$ENV_NAME/.env" start
