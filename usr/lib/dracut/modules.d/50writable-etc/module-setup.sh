#!/bin/bash

check() {
    return 0
}

install() {
    inst_multiple mountpoint

    inst_simple "$moddir/writable-etc.service" "$systemdsystemunitdir/writable-etc.service"
    $SYSTEMCTL -q --root "$initdir" enable writable-etc.service
}
