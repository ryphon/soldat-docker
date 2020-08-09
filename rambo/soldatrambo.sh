docker run -d --name soldat \
    -p 23073:23073 \
    -p 23073:23073/udp \
    -p 23083:23083 \
    -e GAMEMODE=0 \
    -e FRIENDLYFIRE=0 \
    -e MAXPLAYERS=32 \
    -e GAMEPASS="" \
    -e ADMINPASS="" \
    -e LOBBYREGISTER=1 \
    -e SERVERNAME="Soldat server" \
    -e GREETING="Welcome" \
    -e GREETING2="" \
    -e GREETING3="" \
    -e SERVERINFO="" \
    -e BALANCETEAMS=0 \
    -v </path/to/maps/folder>:/opt/steam/soldat/custom \
nurtalf/soldat-steam
