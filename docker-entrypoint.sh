#!/bin/bash

set -e

# exec docker-preprocess.sh
if [ -x "/docker-preprocess.sh" ]; then
  . "/docker-preprocess.sh"
fi

# current user is root
if [ "$(id -u)" = "0" ]; then
    # no parameter
    if [ -z "$1" ]; then
        # exec default command
        exec /bin/sh -c "/usr/sbin/sshd -D"
    fi
    # has parameter
    if [ -n "$1" ]; then
        # exec by app
        # exec gosu app "$@"
		exec "$@"
    fi
fi

# current user is not root
# exec by spec user
exec "$@"
