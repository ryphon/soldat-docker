docker run \
    -p 23073:23073 \
    -p 23073:23073/udp \
    -p 23083:23083 \
    -v $(pwd)/soldat:/opt/steam/soldat/ \
nurtalf/soldat-steam
