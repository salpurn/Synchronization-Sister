#!/bin/bash

NODES="10.0.0.1:8001,10.0.0.2:8002,10.0.0.3:8003,10.0.0.4:8004,10.0.5:8005"

# Single PUT to node 1
python3 ./kvclient.py --nodes $NODES cmd --node 1  "PUT color black"
python3 ./kvclient.py --nodes $NODES cmd --node 2  "PUT color magenta"
python3 ./kvclient.py --nodes $NODES cmd --node 2  "PUT warna kuning"
python3 ./kvclient.py --nodes $NODES race "PUT color blue" "PUT color green" 
python3 ./kvclient.py --nodes $NODES race "PUT warna oranye" "PUT warna hijau" 

echo "-------HASIL----"
python3 ./kvclient.py --nodes $NODES  getall color
echo "-------HASIL----"
python3 ./kvclient.py --nodes $NODES  getall warna