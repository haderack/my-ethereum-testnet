#!/bin/bash
/usr/bin/geth $@ &
node /root/ui/server.js
