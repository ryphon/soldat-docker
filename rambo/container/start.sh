#!/bin/bash

cp /apps/config.ini /opt/steam/soldat/soldat.ini

# Creating map list based on game mode
if [ "$GAMEMODE" == "0" ] || [ "$GAMEMODE" == "1" ] || [ "$GAMEMODE" == "2" ] || [ "$GAMEMODE" == "4" ]; then
  ls /opt/steam/soldat/maps | grep -v ctf_ | grep -v inf_ | grep -v htf_ | cut -d "." -f1 > /opt/steam/soldat/mapslist.txt
elif [ "$GAMEMODE" == "3" ]; then
  ls /opt/steam/soldat/maps | grep ctf_ | cut -d "." -f1 > /opt/steam/soldat/mapslist.txt
elif [ "$GAMEMODE" == "6" ]; then
  ls /opt/steam/soldat/maps | grep htf_ | cut -d "." -f1 > /opt/steam/soldat/mapslist.txt
elif [ "$GAMEMODE" == "5" ]; then
  ls /opt/steam/soldat/maps | grep inf_ | cut -d "." -f1 > /opt/steam/soldat/mapslist.txt
fi

#chmod +x /opt/steam/soldat/soldatserver
echo Admin password is: $ADMINPASS
cd /opt/steam/soldat;
./soldatserver
