#!/usr/bin/env bash

echo "Updating apt"
sudo apt update
echo "Installing golang packages"
sudo apt install -y golang-go

# Verify golang is installed
go_binary=`which go`
if [ -z $go_binary ]; then
	echo "Failed to install go, exiting.."
	exit 1
fi

sudo apt-get install -y build-essential

# Create a working dir.
mkdir -p ~/work/papers/inst
cd ~/work/papers/inst

# Clone the geth repo.
echo "Cloning geth miner"
git clone https://github.com/ethereum/go-ethereum.git
cd go-ethereum

# Build geth.
make geth
