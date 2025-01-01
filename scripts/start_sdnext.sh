#!/usr/bin/env bash
echo "SDNext: Starting automatic"
cd /workspace/"${SD_BASEDIR}" || exit
venv_dir=$VENV_PATH ./webui.sh --debug --listen --skip-all --insecure --use-xformers --api-log --log sdnext.log
