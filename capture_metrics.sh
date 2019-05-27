#!/usr/bin/env bash

rm -rf ~/.eth*

#~/work/papers/inst/go-ethereum/build/bin/geth --mine --minerthreads=1 --etherbase=0x0000000000000000000000000000000000000002 > /tmp/log 2>&1
./start_geth_local.sh &

geth_pid=`ps aux | grep bin/geth | grep -v grep | tr -s ' ' | cut -d' ' -f2`

echo "get_pid is " $geth_pid
# Profile the main functions, consensus functions, miner functions.
set -x

#./capture_miner_funccount_metrics.sh $geth_pid &
#./capture_consensus_funccount_metrics.sh $geth_pid &
#./capture_other_funccount_metrics.sh $geth_pid &

#sudo ~/work/papers/inst/bcc/tools/funccount.py -p ${geth_pid} /home/ubuntu/work/papers/inst/go-ethereum/build/bin/geth:*iner* > /tmp/minerfuncs 2>&1 &
#sudo ~/work/papers/inst/bcc/tools/funccount.py -p ${geth_pid} /home/ubuntu/work/papers/inst/go-ethereum/build/bin/geth:*ain* > /tmp/mainfuncs 2>&1 &
#sudo ~/work/papers/inst/bcc/tools/funccount.py -p ${geth_pid} /home/ubuntu/work/papers/inst/go-ethereum/build/bin/geth:*onsensus* > /tmp/consensusfuncs 2>&1 &
set +x
