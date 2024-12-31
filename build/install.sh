#!/usr/bin/env bash
set -e

# Clone the git repo of the SDNext repo
# and set commit
git clone https://github.com/vladmandic/automatic.git
cd /automatic
git checkout "${SDNEXT_COMMIT}"

# Create and activate venv
python3 -m venv --system-site-packages /venv
source /venv/bin/activate

pip install xformers=="${XFORMERS_VERSION}"

# Install SDNext
pip install -r requirements.txt
python /automatic/launch.py --debug --use-cuda --use-xformers --test --optional

# Clone the extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git extensions/sd-webui-controlnet
git clone https://github.com/continue-revolution/sd-webui-animatediff extensions/sd-webui-animatediff
git clone --depth=1 https://github.com/civitai/sd_civitai_extension.git extensions/sd_civitai_extension
git clone https://github.com/BlafKing/sd-civitai-browser-plus.git extensions/sd-civitai-browser-plus

# Install dependencies for the various extensions
cd "/automatic/extensions/sd-webui-controlnet"
pip install -r requirements.txt
cd "/automatic/extensions/sd_civitai_extension"
pip install -r requirements.txt

# Install dependencies for Civitai Browser+ extension
cd "/automatic/extensions/sd-civitai-browser-plus"
pip install send2trash beautifulsoup4 ZipUnicode fake-useragent packaging pysocks
