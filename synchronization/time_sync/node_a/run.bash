#!/bin/bash

python3 peer_node.py \
	  --name A --listen 0.0.0.0 5000 \
	  --peers A@10.0.0.2:5000 B@10.0.0.3:5001 D@10.0.0.4:5002 \
	  --logger 10.0.0.1 9999 \
	  --offset-ms 600 \
	  --initiate-broadcast --msg "Hello from A"

