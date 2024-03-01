#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide the URL of the file to download."
  exit 1
fi

# Validate URL format (basic check)
if [[ ! "$1" =~ ^https?:// ]]; then
  echo "Error: Invalid URL format. Please provide a valid URL starting with 'http://' or 'https://'."
  exit 1
fi

# Download the file using wget with quiet mode and specifying output file name
wget -q -O "$1" "$1"

# Check for download success
if [[ $? -eq 0 ]]; then
  echo "Download completed successfully!"
else
  echo "Error: Download failed. Please check the provided URL and your network connection."
fi
