#!/usr/bin/env bash

geth_pid=$1
sudo ~/work/papers/inst/bcc/tools/funccount.py -p ${geth_pid} /home/ubuntu/work/papers/inst/go-ethereum/build/bin/geth:*onsensus* > /tmp/consensusfuncs 2>&1
