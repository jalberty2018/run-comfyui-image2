# Qwen-Image 2.1 — with prompt enhancer

Run Qwen-Image 2.1 for text-to-image and image editing with the image2 container. Models and the supplied Qwen workflows download when the pod starts.

See also the [version without prompt enhancer](https://console.runpod.io/hub/template/l9es28w20d?ref=se4tkc5o).

## Included models

Blackwell GPUs above `VRAM_THRESHOLD_BLACKWELL=40` GiB use HVRAM_BLACKWELL with BF16 diffusion and a BF16 standard text encoder (RTX PRO 6000). No separate LVRAM_BLACKWELL models are configured, so Blackwell GPUs at or below 40 GiB fall back to the standard profiles. With `VRAM_THRESHOLD=36`, these use INT8 ConvRot for both at or below 36 GiB, and BF16 for both above it. Heretic W4A8 and the BF16 VAE remain shared across profiles.

| GPU / available VRAM | Profile | Diffusion | Standard text encoder |
|---|---|---|---|
| RTX PRO 6000 Blackwell (>40 GiB) | HVRAM_BLACKWELL | BF16 | BF16 |
| RTX 4090 / MIG (24 GB) | LVRAM | INT8 ConvRot | INT8 ConvRot |

| Model file | Role |
|---|---|
| `qwen_image_2.1_bf16.safetensors` (HVRAM, HVRAM_BLACKWELL) / `qwen_image_2.1_int8_convrot.safetensors` (LVRAM) | Diffusion model for image generation and editing. |
| `qwen3vl_8b_bf16.safetensors` (HVRAM, HVRAM_BLACKWELL) / `qwen3vl_8b_int8_convrot.safetensors` (LVRAM) | Standard text encoder for the image workflow. |
| `qwen3vl_8b_w4a8_heretic.safetensors` | Alternative Heretic text encoder. Select it in `CLIPLoader` with type `qwen_image`. |
| `qwen_image_2.1_vae_bf16.safetensors` | VAE for conversion between pixels and image latents. |

### Additional prompt enhancers

Both profiles use the following INT8 ConvRot prompt enhancers. The Comfy-Org repository does not provide BF16 files for these two enhancers.

| Model file | Role |
|---|---|
| `qwen3.5_9b_qwen_image_2.1_pe_t2i.int8_convrot.safetensors` | Qwen3.5 9B prompt enhancer for text-to-image prompts. |
| `qwen3.5_9b_qwen_image_2.1_pe_i2i.int8_convrot.safetensors` | Qwen3.5 9B prompt enhancer for image-edit instructions. |

## Start here

1. This [template](https://console.runpod.io/hub/template/m3upcvmvw4?ref=se4tkc5o)
2. Select a supported NVIDIA GPU and sufficient Pod RAM (CUDA 13.x required)
3. Allocate persistent volume storage for the models, tools and outputs; see below.
4. Deploy the pod and follow the container logs.
5. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
6. Load a supplied Qwen-Image 2.1 workflow and select the downloaded model files.
7. Select the T2I prompt enhancer for text-to-image or the I2I prompt enhancer for image editing. Run a small first test.

## Included

- text-to-image workflow and image-edit workflow.
- Text-to-image with prompt enhancer.
- Image editing with prompt enhancer.
- ComfyUI, Code Server, LoRA Manager and SSH from the image2 container.
- Persistent `/workspace` storage.

## Hardware and storage

Tested on **NVIDIA RTX 4090, RTX PRO 6000 MiG 24 Gb, L40S** with **60 GB of volume storage**. BF16 downloads require more volume storage than INT8 ConvRot; allow additional space for profiles using BF16 diffusion and for outputs.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `VRAM_THRESHOLD` | Optional; default `36` | Selects HVRAM above this VRAM boundary in GiB; otherwise LVRAM. |
| `VRAM_THRESHOLD_BLACKWELL` | Optional; template value `40` | Selects HVRAM_BLACKWELL above this boundary in GiB; otherwise falls back to standard profiles because no LVRAM_BLACKWELL models are configured. |
| `PASSWORD` | Optional | Protects pod tools; otherwise startup generates a password and prints it in the logs. |
| `HF_TOKEN` | Authenticated downloads | Hugging Face authentication. |
| `CIVITAI_TOKEN` | Additional CivitAI downloads | Not required for these model files. |

## Documentation and help

- [Image inference overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)

## Other templates

- [WAN 2.2 video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3 video](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
