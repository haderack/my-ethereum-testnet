#!/bin/bash
/usr/bin/geth $@ &
/usr/local/bin/node /root/ui/server.js
