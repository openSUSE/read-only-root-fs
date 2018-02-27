check() {
    return 0
}

# called by dracut
depends() {
    echo "systemd-initrd"
    return 0
}

installkernel() {
    hostonly='' instmods overlay
    return 0
}
