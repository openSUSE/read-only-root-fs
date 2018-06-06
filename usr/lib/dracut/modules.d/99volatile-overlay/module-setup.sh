#!/bin/bash

# called by dracut
check() {
    return 0
}

# called by dracut
depends() {
    echo fs-lib
}

# called by dracut
install() {
    hostonly="" instmods overlay
    inst_hook pre-pivot 50 "$moddir/mount-overlay.sh"
}
