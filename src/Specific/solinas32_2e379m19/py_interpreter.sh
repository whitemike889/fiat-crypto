#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**379 - 19' -Dmodulus_bytes='21 + 1/18' -Da24='121665'