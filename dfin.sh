#!/bin/bash

# Get date (YYYY-MM-DD)
fecha=$(date +%Y-%m-%d)

# URL
url="https://www.elfinanciero.com.mx/graficos/edicion-impresa/download.php?file=edicion-digital.pdf"

# Download folder - adjust path as needed
download_folder="El Financiero"

# Filename
filename="el_financiero-${fecha}.pdf"

# Create folder if it doesn't exist
mkdir -p "$download_folder"

# Download file (using curl)
curl -L "$url" -o "$download_folder/$filename"

echo "File downloaded as: $download_folder/$filename"
