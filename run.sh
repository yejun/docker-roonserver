#!/bin/bash

ROON_SERVER_PKG=RoonServer_linuxx64.tar.bz2
ROON_SERVER_URL=http://download.roonlabs.com/builds/${ROON_SERVER_PKG}

cd /opt
if test ! -d RoonServer; then
        curl $ROON_SERVER_URL -O
        tar xjf $ROON_SERVER_PKG
        rm -f $ROON_SERVER_PKG
fi
exec /opt/RoonServer/start.sh
