#!/bin/bash

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh
type det_fs >/dev/null 2>&1 || . /lib/fs-lib.sh

overlaydir="${NEWROOT}/tmp"

mount -t tmpfs tmpfs "${overlaydir}"
mkdir "${overlaydir}"/{etc,work-etc,var,work-var}

mount -t overlay overlay "${NEWROOT}/etc" -o "upperdir=${overlaydir}/etc,workdir=${overlaydir}/work-etc,lowerdir=${NEWROOT}/etc"
mount -t overlay overlay "${NEWROOT}/var" -o "upperdir=${overlaydir}/var,workdir=${overlaydir}/work-var,lowerdir=${NEWROOT}/var"
