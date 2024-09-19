#!/bin/bash

check() {
    return 0
}

install() {
    mkdir -p "${initdir}/$systemdsystemunitdir/initrd-parse-etc.service.d"
    inst_simple "$moddir/writable-etc.conf" "$systemdsystemunitdir/initrd-parse-etc.service.d/writable-etc.conf"
}
