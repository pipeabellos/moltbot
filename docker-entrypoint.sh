#!/bin/sh
set -e

# Start gateway with dev mode and allow unconfigured
exec node dist/index.js gateway \
  --dev \
  --allow-unconfigured \
  --bind lan \
  --port "${PORT:-10000}"
