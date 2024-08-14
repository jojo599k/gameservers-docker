#!/bin/bash

./configure.sh
exec ./srcds_run -game tf -debug -ip 0.0.0.0 -usercon $MAPCYCLEFILE $OTHER_ARGS $@
