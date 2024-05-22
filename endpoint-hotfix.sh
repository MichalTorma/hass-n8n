#!/bin/bash

# Base path you want to prepend, for example: /7642a087_hass-n8n
BASE_PATH="/7642a087_hass-n8n"

# Directory where n8n static files are located
N8N_DIR="/usr/local/lib/node_modules/n8n/dist"

# Find and replace the base path in the HTML and JavaScript files
find $N8N_DIR -type f -name "*.html" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +
find $N8N_DIR -type f -name "*.js" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +
