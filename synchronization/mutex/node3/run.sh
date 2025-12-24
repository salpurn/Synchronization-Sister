#!/bin/bash

python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 10.0.0.1:8001=1,10.0.0.2:8002=2,10.0.0.4:8004=4,10.0.0.5:8005=5 --logger-addr 10.0.0.1:9000 --numnodes 5 --use-mutex 1 