#!/usr/bin/env sh

chmod a+w /dev/pts/0
exec lighttpd -D -f /etc/lighttpd/lighttpd.conf

/ # lighttpd -help
#lighttpd/1.4.55 (ssl) - a light and fast webserver
#usage:
# -f <name>  filename of the config-file
# -m <name>  module directory (default: /usr/lib/lighttpd)
# -i <secs>  graceful shutdown after <secs> of inactivity
# -1         process single (one) request on stdin socket, then exit
# -p         print the parsed config-file in internal form, and exit
# -t         test config-file syntax, then exit
# -tt        test config-file syntax, load and init modules, then exit
# -D         don't go to background (default: go to background)
# -v         show version
# -V         show compile-time features
# -h         show this help

#rc-service lighttpd start && rc-update add lighttpd default


