#!/bin/sh

set -e

cf worker upload-worker --zone-id $ZONE --script @$SCRIPT

