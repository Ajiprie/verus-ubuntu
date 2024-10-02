# verus-ubuntu


sudo apt-get install -y screen libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential &&
cd verus-ubuntu || { echo "Failed to enter verus-ubuntu directory"; exit 1; } && chmod +x *
screen -d -m ./hellminer -c stratum+tcp://na.luckpool.net:3960 -u "RP3HXZoebHyGBL6nBhZe5f4jDfE1RMGfn1.worker1" -p x --cpu 4
