#!/usr/bin/env bash
echo "SDNext: Starting automatic"
cd /workspace/"${APP}" || exit
python launch.py --debug --listen --skip-all --insecure --use-xformers --api-log --log sdnext.log
