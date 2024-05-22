#!/bin/bash

# Base path you want to prepend, for example: /7642a087_hass-n8n
BASE_PATH="/7642a087_hass-n8n"

# Directory where n8n static files are located
N8N_DIR="/usr/local/lib/node_modules/n8n/dist"

# Update HTML files
find $N8N_DIR -type f -name "*.html" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Update JavaScript files
find $N8N_DIR -type f -name "*.js" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Update CSS files
find $N8N_DIR -type f -name "*.css" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Additionally, you might need to update other types of files, for instance, JSON or other configuration files
find $N8N_DIR -type f -name "*.json" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +
