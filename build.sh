#!/usr/bin/env bash
set -e 

echo "Downloading latest APEX to /tmp/apex-latest.zip"
rm -f /tmp/apex-latest.zip
rm -rf apex-latest
curl https://download.oracle.com/otn_software/apex/apex-latest.zip --progress-bar -o /tmp/apex-latest.zip

echo "Extracting file to /tmp/apex-latest"
unzip -q /tmp/apex-latest.zip -d apex-latest

echo "Building image localhost/ords:latest"
podman build -t localhost/ords:latest .

echo "Cleanup temp files"
rm -f /tmp/apex-latest.zip
rm -rf apex-latest
