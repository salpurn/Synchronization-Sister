#!/bin/bash

python3 ./kv.py --id 5 --tcp 8005 --udp 8105 --peers 10.0.0.1:8001=1,10.0.0.2:8002=2,10.0.0.3:8003=3,10.0.0.4:8004=4 --logger-addr 10.0.0.1:9000 --numnodes 5 --use-mutex 1