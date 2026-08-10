# Run image inference with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables.
- Supports advanced workflows for **image generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.
- Automatic selecting bf16 or fp8 models/workflows.

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API
- Lora Manager

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not stable and will be updated.

## Template Deployment on Runpod

### Deployment/Usage information

- The templates on runpod are tested on RTX GPU's.

### Templates

- Specific models/loras/workflows for the templates are downloaded when the pod starts.

- 👉 [Z-Image Base and Turbo](https://console.runpod.io/deploy?template=ia5t70hfak&ref=se4tkc5o)

- 👉 [ERNIE-Image Base and Turbo](https://console.runpod.io/deploy?template=g8ow1s1s0a&ref=se4tkc5o)

- 👉 [Krea-2 Base and Turbo](https://console.runpod.io/deploy?template=e2hlyrm22l&ref=se4tkc5o)

- 👉 [Flux.2 Dev](https://console.runpod.io/deploy?template=8nl523gts5&ref=se4tkc5o)
- 👉 [Flux.2 Klein](https://console.runpod.io/deploy?template=n1wa3lb44l&ref=se4tkc5o)

- 👉 [Qwen image 2512](https://console.runpod.io/deploy?template=3fri17sxaa&ref=se4tkc5o)
- 👉 [Qwen image edit 2511](https://console.runpod.io/deploy?template=mxvvx0hcmp&ref=se4tkc5o)

## License note on FLUX.2 [klein] 9B

- The 9B model is released under the FLUX Non-Commercial License by Black Forest Labs. This means you can use it for personal and research purposes, but commercial use is not permitted. If you use the 9B model, you are responsible for complying with that license.

### Pod documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_image_tutorial/)

## GPU VRAM/RAM requirements

| Model           | Working GPU          | Min VRAM | Min RAM |
|-----------------|---------------------|----------|---------|
| Z-Image Turbo   | RTX 3090, RTX A5000 | 20 GB    | 50 GB   |
| ERNIE-Image     | RTX A4500 | 20 GB    | 50 GB   |
| Krea-2  bf16   | RTX 3090 |  24 GB    | 65  GB   |
| Krea-2  fp8   | RTX A4500 |  20 GB    | 65  GB   |
| FLUX.2 Klein    | RTX A4500    | 20 GB    | 50 GB   |
| FLUX.2 Dev bf16 | RTX 6000 Ada | 44 GB    | 80 GB   |
| FLUX.2 Dev fp8  | RTX 3090    | 24 GB    | 50 GB   |
| Qwen Image bf16       | RTX A6000  | 44 GB    | 65 GB   |
| Qwen Image fp8        | RTX A5000, RTX 3090 | 24 GB    | 45 GB   |
| Qwen Image Edit bf16  | RTX A5000 | 24 GB    | 65 GB   |
| Qwen Image Edit fp8   | RTX A5000, RTX 3090  | 24 GB    | 45 GB   |

## Volume Storage Requirements

| Model | Minimum                    |
|-------|----------------------------|
| Z-Image | 50 GB (`/workspace`)       |
| ERNIE | 50 GB (`/workspace`)       |
| Krea-2 bf16 | 60 GB (`/workspace`)       |
| Krea-2 fp8 | 50 GB (`/workspace`)       |
| FLUX bf16 | 90 GB (`/workspace`)       |
| FLUX fp8 | 75 GB (`/workspace`)       |
| Qwen Image | 70 GB (`/workspace`)       |

## Pod Storage Requirements

| Model | Minimum                    |
|-------|----------------------------|
| —     | 15 GB                      |

## Other available video pods and templates

- [WAN 2.2](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [Minimax H3](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)