#!/bin/sh

cf worker upload-worker --zone-id $ZONE --script @$SCRIPT
