#!/usr/bin/env bash
set -e

# Clone the git repo of the SDNext repo
# and set commit
git clone https://github.com/vladmandic/automatic.git
cd /automatic

if [[ -e ${SDNEXT_COMMIT} ]]; then
  git checkout "${SDNEXT_COMMIT}"
fi

git submodule --quiet update --init --recursive

# Create and activate venv
python3 -m venv --system-site-packages /venv
source /venv/bin/activate

# Clone the extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git extensions-builtin/sd-webui-controlnet
# git clone https://github.com/continue-revolution/sd-webui-animatediff extensions-builtin/sd-webui-animatediff
git clone --depth=1 https://github.com/civitai/sd_civitai_extension.git extensions-builtin/sd_civitai_extension
git clone https://github.com/BlafKing/sd-civitai-browser-plus.git extensions-builtin/sd-civitai-browser-plus

# Install SDNext
pip install -r requirements.txt
python /automatic/launch.py --debug --use-cuda --use-xformers --test --optional --insecure
