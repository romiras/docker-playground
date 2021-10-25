#!/bin/sh
set -e

echo "Sleeping 1 sec..."
sleep 1

echo "Entrypoint args: $@"
exec "$@"
