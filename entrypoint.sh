#!/bin/sh

cf worker upload-worker --zone-id $ZONE --script $SCRIPT

cf worker list-worker-scripts --zone-id $ZONE
