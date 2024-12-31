variable "REGISTRY" {
  default = "docker.io"
}

variable "REGISTRY_USER" {
default = "mnb3000"
}

variable "APP" {
  default = "runpod-sdnext"
}

variable "SD_BASEDIR" {
  default = "automatic"
}

variable "BASE_IMAGE_REPOSITORY" {
  default = "runpod/pytorch"
}

variable "BASE_IMAGE_VERSION" {
  default = "2.4.0"
}

variable "CUDA_VERSION" {
  default = "12.4.1"
}

variable "TORCH_VERSION" {
  default = "2.4.0"
}

variable "PYTHON_VERSION" {
  default = "3.11"
}

variable "XFORMERS_VERSION" {
  default = "0.0.28.post1"
}

variable "RELEASE" {
  default = "testing"
}

// GitHub Action metadata (tags)
target "docker-metadata-action" {}

target "default" {
  inherits = ["docker-metadata-action"]
  dockerfile = "Dockerfile.venv.sdnext"
  tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}"]
  args = {
    RELEASE = "${RELEASE}"
    BASE_IMAGE = "${BASE_IMAGE_REPOSITORY}:${BASE_IMAGE_VERSION}-py${PYTHON_VERSION}-cuda${CUDA_VERSION}-devel-ubuntu22.04"
    TORCH_VERSION = "${TORCH_VERSION}"
    XFORMERS_VERSION = "${XFORMERS_VERSION}"
    XFORMERS_PACKAGE = "xformers==${XFORMERS_VERSION}"
    SD_BASEDIR = "${SD_BASEDIR}"
    SDNEXT_COMMIT = "451eeab138defd158ec71a1c28cd1f3573aa1ef5"
    CIVITAI_DOWNLOADER_VERSION = "2.1.0"
    VENV_PATH = "/workspace/venvs/${APP}"
  }
  platforms = ["linux/amd64"]
}
