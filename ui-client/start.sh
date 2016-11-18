#!/bin/bash
/etc/init.d/nginx start &
/usr/bin/geth $@
