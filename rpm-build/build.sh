#!/bin/bash

mkdir -p ~/rpmbuild/SOURCES
mkdir -p rpms
spectool -C ~/rpmbuild/SOURCES -g jo.spec
rpmbuild -bb jo.spec
mv -v ~/rpmbuild/RPMS/x86_64/*.rpm ./rpms
