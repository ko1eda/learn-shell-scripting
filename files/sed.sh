#! /bin/bash

# just some quick notes on the sed command and its uses

# Remove the man page exclusion from ubuntus package manager config
# ubuntu docker doesn't come with man pages (solution https://github.com/tianon/docker-brew-ubuntu-core/issues/122)
sed -i 's|path-exclude=/usr/share/man/\*|#path-exclude=/usr/share/man/\*|' /etc/dpkg/dpkg.cfg.d/excludes