variable "REGISTRY" {
  default = "docker.io"
}

variable "REGISTRY_USER" {
default = "mnb3000"
}

variable "APP" {
  default = "sdnext"
}

variable "CU_VERSION" {
    default = "121"
}

variable "RELEASE" {
  default = "0.2.0"
}

variable "BASE_IMAGE_REPOSITORY" {
  default = "jdini76/runpod-base"
}

variable "BASE_IMAGE_VERSION" {
  default = "2.1.0"
}

variable "CUDA_VERSION" {
  default = "12.1.1"
}

variable "TORCH_VERSION" {
  default = "2.4.0"
}

variable "PYTHON_VERSION" {
  default = "3.11"
}

variable "XFORMERS_VERSION" {
  default = "0.0.27"
}

target "default" {
  dockerfile = "Dockerfile.venv.sdnext"
  tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}"]
  args = {
    APP = "${APP}"
    RELEASE = "${RELEASE}"
    BASE_IMAGE = "${BASE_IMAGE_REPOSITORY}:${BASE_IMAGE_VERSION}-python${PYTHON_VERSION}-cuda${CUDA_VERSION}-torch${TORCH_VERSION}"
    TORCH_VERSION = "${TORCH_VERSION}"
    XFORMERS_VERSION = "${XFORMERS_VERSION}"
    XFORMERS_PACKAGE = "xformers==${XFORMERS_VERSION}"
    SDNEXT_COMMIT = "451eeab138defd158ec71a1c28cd1f3573aa1ef5"
    CIVITAI_DOWNLOADER_VERSION = "2.1.0"
    VENV_PATH = "/workspace/venvs/${APP}"
  }
  platforms = ["linux/amd64"]
}
