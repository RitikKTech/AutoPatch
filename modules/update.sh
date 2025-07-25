#!/bin/bash

echo "Starting system update"
sudo apt update && sudo apt upgrade -y
if [ $? -eq 0 ]; then
	echo "System Update Successfully."
else 
	echo "Update failed Please check manually"
fi
