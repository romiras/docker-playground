#!/bin/sh

echo "Populating dataset in Redis..."
redis-cli -h redis --pipe < /tmp/dump.resp
redis-cli -h redis --scan | head
