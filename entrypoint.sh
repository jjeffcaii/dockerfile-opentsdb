#!/bin/sh
port=${PORT0:-4242}
etc=/etc/opentsdb/opentsdb.conf
sed -i "s/tsd.network.port/# tsd.network.port/g" ${etc}
echo "tsd.network.port = ${port}" >> ${etc}
/usr/share/opentsdb/bin/tsdb $@
