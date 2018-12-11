#!/bin/sh

cf worker upload-worker --zone-id $ZONE --script @$SCRIPT

cf worker list-worker-scripts --organization-id b191549164778b850e88b43187c1bd21
