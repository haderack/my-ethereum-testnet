#!/bin/bash
/usr/bin/geth $@ &
/usr/bin/nodejs /root/ui/server.js
