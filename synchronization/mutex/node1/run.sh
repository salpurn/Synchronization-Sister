#!/bin/bash

python3 ./kv.py --id 1 --tcp 8001 --udp 8101 --peers 10.0.0.2:8002=2,10.0.0.3:8003=3,10.0.0.4:8004=4,10.0.0.5:8005=5 --logger-addr 127.0.0.1:9000 --numnodes 5 --use-mutex 1