#!/usr/bin/env bash

~/work/papers/inst/go-ethereum/build/bin/geth --mine --minerthreads=1 --etherbase=0x0000000000000000000000000000000000000002 > /tmp/log 2>&1
