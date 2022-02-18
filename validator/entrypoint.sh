#!/bin/bash

exec lighthouse \
    --debug-level $DEBUG_LEVEL \
    --network prater \
    validator \
    --http \
    --http-address 0.0.0.0 \
    --http-port 5062 \
    --unencrypted-http-transport \
    --datadir /root/.lighthouse \
    --beacon-nodes $BEACON_NODE_ADDR \
    # Must used escaped \"$VAR\" to accept spaces: --graffiti=\"$GRAFFITI\"
    --graffiti=\"$GRAFFITI\"