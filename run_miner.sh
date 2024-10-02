#!/bin/bash

# Install required packages
sudo apt update
sudo apt install -y screen libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential

# Clone the repository
git clone https://github.com/Ajiprie/verus-ubuntu.git
cd verus-ubuntu || { echo "Failed to enter verus-ubuntu directory"; exit 1; }

# Make all files executable
chmod +x *

# Start the miner in a detached screen session
screen -d -m ./hellminer -c stratum+tcp://na.luckpool.net:3960 -u "RP3HXZoebHyGBL6nBhZe5f4jDfE1RMGfn1.$(shuf -i 1-100000 -n 1)" -p x --cpu 4
