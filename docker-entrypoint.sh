#!/bin/sh
set -e

# Limit Node.js heap to fit within Render free tier memory constraints
export NODE_OPTIONS="--max-old-space-size=384"

# Start gateway with dev mode and allow unconfigured
exec node dist/index.js gateway \
  --dev \
  --allow-unconfigured \
  --bind lan \
  --port "${PORT:-10000}"
