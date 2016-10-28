#!/usr/bin/env bash

cp $SRC/my.cnf $ROOTFS/etc/mysql/my.cnf
mkdir -p $ROOTFS/data $ROOTFS/var/lib/mysql $ROOTFS/etc/mysql/conf.d
