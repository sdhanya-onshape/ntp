# ntp

Simple Puppet module for setting up NTP with spec tests.

Created using PDK, supports RedHat and CentOS.

Validated with `docker run --rm -it -v `pwd -P`:/code --workdir /code puppet/pdk validate --parallel --auto-correct`

Run tests with `docker run --rm -it -v `pwd -P`:/code --workdir /code puppet/pdk test unit`
