variable "APP" {
  default = "runpod-sdnext"
}

variable "CU_VERSION" {
    default = "124"
}

variable "SD_BASEDIR" {
  default = "automatic"
}

variable "BASE_IMAGE_REPOSITORY" {
  default = "mnb3000/runpod-pytorch"
}

variable "CUDA_VERSION" {
  default = "12.4.1"
}

variable "TORCH_VERSION" {
  default = "2.5.1"
}

variable "PYTHON_VERSION" {
  default = "3.11"
}

variable "XFORMERS_VERSION" {
  default = "0.0.28.post3"
}

variable "RELEASE" {
  default = "testing"
}

// GitHub Action metadata (tags)
target "docker-metadata-action" {}

target "default" {
  inherits = ["docker-metadata-action"]
  dockerfile = "Dockerfile.venv.sdnext"
  args = {
    RELEASE = "${RELEASE}"
    INDEX_URL = "https://download.pytorch.org/whl/cu${CU_VERSION}"
    BASE_IMAGE = "${BASE_IMAGE_REPOSITORY}:${TORCH_VERSION}-py${PYTHON_VERSION}-cuda${CUDA_VERSION}-devel-ubuntu22.04"
    TORCH_VERSION = "${TORCH_VERSION}"
    XFORMERS_VERSION = "${XFORMERS_VERSION}"
    XFORMERS_PACKAGE = "xformers==${XFORMERS_VERSION}"
    SD_BASEDIR = "${SD_BASEDIR}"
    # SDNEXT_COMMIT = "451eeab138defd158ec71a1c28cd1f3573aa1ef5"
    CIVITAI_DOWNLOADER_VERSION = "2.1.0"
    VENV_PATH = "/venv"
  }
  platforms = ["linux/amd64"]
}
