#!/bin/sh

cf worker upload-worker --zone-id $ZONE --script @$SCRIPT

cf worker list-worker-routes --zone-id $ZONE
