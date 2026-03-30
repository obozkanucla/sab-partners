#!/bin/bash
# Deploy sab-partners to Hostinger
# Usage: ./deploy.sh

set -e

HOST="u307283133@31.170.164.79"
PORT=65002
REMOTE_DIR="public_html"

echo "Deploying to sab.partners..."

scp -P $PORT index.html style.css "$HOST:$REMOTE_DIR/"
scp -P $PORT -r assets/ "$HOST:$REMOTE_DIR/assets/"

echo "Done. Site deployed to https://sab.partners"
