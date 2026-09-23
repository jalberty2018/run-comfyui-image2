[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-image2)](https://hub.docker.com/r/ls250824/run-comfyui-image2)

# 🚀 Run image2 with ComfyUI with provisioning RunPod

A streamlined and automated environment for running **ComfyUI** with **image models**, optimized for use on RunPod

## Krea-2

![Image Krea](images/ai-generated-krea2-composition.jpg)

## QWEN Image 2.1

![Image qwen](images/ai-generated-qwen-image-21-i2i-prompt-enhancer.jpg)

## 🔧 Features

- Automatic model and LoRA downloads via environment variables.
- Built-in **authentication** for:
  - ComfyUI
  - Code Server
  - Hugging Face API
  - CivitAI API
- Supports advanced workflows for **image generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## 🧩 Template Deployment

### Deployment

- All available templates on runpod are tested on a RTX 6000,5000,4500, 3500

### Runpod templates

- 👉 [Krea-2 Base and Turbo](https://console.runpod.io/deploy?template=e2hlyrm22l&ref=se4tkc5o)
- 👉 [Qwen Image 2.1](https://console.runpod.io/hub/template/l9es28w20d?ref=se4tkc5o)
- 👉 [Qwen Image 2.1 + prompt enhancer](https://console.runpod.io/hub/template/m3upcvmvw4?ref=se4tkc5o)

### Documentation

- [⚙️ Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [📚 Tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial)
- [⚙️ Provisioning examples](docs/ComfyUI_image_provisioning.md)

## 🐳 Docker Images

### Base Images

- **PyTorch Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/pytorch-cuda-ubuntu-runtime)](https://hub.docker.com/r/ls250824/pytorch-cuda-ubuntu-runtime)

- **ComfyUI Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/comfyui-runtime)](https://hub.docker.com/r/ls250824/comfyui-runtime)

### Custom Image

docker pull ls250824/run-comfyui-image2:<[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-image2)](https://hub.docker.com/r/ls250824/run-comfyui-image2)>

## 🛠️ Build & Push Docker Image (Optional)

Use none docker setup to build the image using the included Python script.

### Build Script: `build_docker.py`

| Argument       | Description                        | Default          |
|----------------|------------------------------------|------------------|
| `--username`   | Your Docker Hub username           | Current user     |
| `--tag`        | Custom image tag                   | Today's date     |
| `--latest`     | Also tag image as `latest`         | Disabled         |

### Example Usage

```bash
git clone https://github.com/jalberty2018/run-comfyui-image2.git
cp ./run-comfyui-image2/build_docker.py ..

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

python3 build_docker.py   --username=<your_dockerhub_username>   --tag=<custom_tag>   --latest   run-comfyui-image2
```
