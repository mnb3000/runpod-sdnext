#!/usr/bin/env bash
echo "SDNext: Starting automatic"
cd /workspace/"${SD_BASEDIR}" || exit
python launch.py --debug --listen --skip-all --insecure --use-xformers --api-log --log sdnext.log
