#!/usr/bin/env bash

for p in `ps aux | grep geth | grep -v grep | tr -s ' ' | cut -d' ' -f2`; do sudo kill -9 $p; done
