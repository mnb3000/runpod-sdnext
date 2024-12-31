#!/usr/bin/env bash
echo "SDNext: Starting automatic"
cd /workspace/"${APP}" || exit
python launch.py --debug --listen --insecure --api-log --log sdnext.log
