# Run image2 inference with ComfyUI with provisioning

## Features

- Automatic provisioning of models, LoRAs, VAEs, text encoders and workflows.
- Separate model profiles for standard NVIDIA and Blackwell GPUs.
- High- and low-VRAM selection through environment variables.
- Uncensored text encoder.
- CUDA 12.8 runtime with preinstalled attention accelerators and custom nodes.
- ComfyUI, Code Server, LoRA Manager and SSH access.
- Hugging Face and CivitAI token support.

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

- 👉 [Krea-2 Base and Turbo](https://console.runpod.io/deploy?template=e2hlyrm22l&ref=se4tkc5o)

### Pod documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial)

## GPU VRAM/RAM requirements

| Model           | Working GPU          | Min VRAM | Min RAM |
|-----------------|---------------------|----------|---------|
| Krea-2  bf16   | RTX 3090 RTX 4090 |  24 GB    | 65  GB   |
| Krea-2  fp8   | RTX A4500 |  20 GB    | 65  GB   |

## Volume Storage Requirements

| Model | Minimum                    |
|-------|----------------------------|
| Krea-2 bf16 | 60 GB (`/workspace`)       |
| Krea-2 fp8 | 50 GB (`/workspace`)       |

## Pod Storage Requirements

| Model | Minimum                    |
|-------|----------------------------|
| —     | 15 GB                      |

## Other available video pods and templates

- [WAN 2.2](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [Minimax H3](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
