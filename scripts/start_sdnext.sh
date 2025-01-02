#!/usr/bin/env bash
echo "SDNext: Starting automatic"
cd "${SD_BASEDIR}" || exit
venv_dir=$VENV_PATH ./webui.sh --debug --listen --skip-all --insecure --use-cuda --use-xformers --api-log --log sdnext.log
