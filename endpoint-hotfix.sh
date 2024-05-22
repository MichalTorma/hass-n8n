#!/bin/bash

# Base path you want to prepend, for example: /7642a087_hass-n8n
BASE_PATH="/7642a087_hass-n8n"

# Directory where n8n source files are located
N8N_SRC_DIR="/usr/local/lib/node_modules/n8n"

# Log the action
echo "Updating base paths in source files located at $N8N_SRC_DIR"

# Update HTML files
find $N8N_SRC_DIR -type f -name "*.html" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Update JavaScript files
find $N8N_SRC_DIR -type f -name "*.js" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Update CSS files
find $N8N_SRC_DIR -type f -name "*.css" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Update JSON files
find $N8N_SRC_DIR -type f -name "*.json" -exec sed -i "s|/assets/|$BASE_PATH/assets/|g" {} +

# Log completion
echo "Base path update completed."
