[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-image)](https://hub.docker.com/r/ls250824/run-comfyui-image)

# 🚀 Run image with ComfyUI with provisioning RunPod

A streamlined and automated environment for running **ComfyUI** with **image models**, optimized for use on RunPod

## Running Z-Image Turbo

![runpod](images/runpod_ZIT.jpg)

![Image](images/ai-generated-ZIB-ZIT.jpg)

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

- All available templates on runpod are tested on a RTX 6000,5000,4500.

### Runpod templates

- 👉 [Runpod Z-Image Base and Turbo](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o)

- 👉 [Krea-2 Base and Turbo](https://console.runpod.io/deploy?template=e2hlyrm22l&ref=se4tkc5o)

- 👉 [ERNIE-Image Base and Turbo](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o)

- 👉 [Runpod Flux.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o)
- 👉 [Runpod Flux.2 Klein](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o)

- 👉 [Runpod Qwen image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o)
- 👉 [Runpod Qwen image edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o)

### Documentation

- [⚙️ Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [📚 Tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_tutorial/)
- [⚙️ Provisioning examples](docs/ComfyUI_image_provisioning.md)

## 🐳 Docker Images

### Base Images

- **PyTorch Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/pytorch-cuda-ubuntu-runtime)](https://hub.docker.com/r/ls250824/pytorch-cuda-ubuntu-runtime)

- **ComfyUI Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/comfyui-runtime)](https://hub.docker.com/r/ls250824/comfyui-runtime)

### Custom Image

docker pull ls250824/run-comfyui-image:<[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-image)](https://hub.docker.com/r/ls250824/run-comfyui-image)>

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
git clone https://github.com/jalberty2018/run-comfyui-image.git
cp ./run-comfyui-image/build_docker.py ..

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

python3 build_docker.py   --username=<your_dockerhub_username>   --tag=<custom_tag>   --latest   run-comfyui-image
```
