#!/bin/bash

python3 ./kv.py --id 4 --tcp 8004 --udp 8104 --peers 10.0.0.1:8001=1,10.0.0.2:8002=2,10.0.0.3:8003=3,10.0.0.5:8005=5 --logger-addr 10.0.0.1:9000 --numnodes 5 --use-mutex 1