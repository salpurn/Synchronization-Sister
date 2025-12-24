#!/bin/bash

NODES="10.0.0.1:8001,10.0.0.2:8002,10.0.0.3:8003,10.0.0.4:8004,10.0.5:8005"

# Single PUT to node 1
python3 ./kvclient.py --nodes $NODES cmd --node 1  "PUT color red"
python3 ./kvclient.py --nodes $NODES cmd --node 2  "PUT color blue"

# GET from node 2
python3 ./kvclient.py  --nodes $NODES cmd --node 2   "GET color"
python3 ./kvclient.py  --nodes $NODES cmd --node 0   "GET color"