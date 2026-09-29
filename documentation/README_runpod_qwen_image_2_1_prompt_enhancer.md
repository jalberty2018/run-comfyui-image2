# Qwen-Image 2.1 — with prompt enhancer

Run Qwen-Image 2.1 for text-to-image and image editing with the image2 container. Models and the supplied Qwen workflows download when the pod starts.

See also the [version without prompt enhancer](https://console.runpod.io/hub/template/l9es28w20d?ref=se4tkc5o).

## Included models

| Total VRAM (whole GiB) | Profile | Diffusion | Text encoders |
|---|---|---|---|
| Above 40 | HVRAM | BF16 | Standard BF16 and Heretic INT8 ConvRot |
| 40 or below | LVRAM | INT8 ConvRot | Heretic INT8 ConvRot |

### Additional prompt enhancers

The prompt-enhancer template downloads these Heretic GGUF files for both VRAM profiles.
The T2I file comes from `pottokao/Qwen-Image-2.1-PE-T2I-Heretic-GGUF`; the I2I model and projector come from `pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF`.

## Start here

1. This [template](https://console.runpod.io/hub/template/g8ow1s1s0a?ref=se4tkc5o)
2. Select a starred NVIDIA GPU from the deployment page.
3. Allocate persistent volume storage for the models, tools and outputs; see below.
4. Deploy the pod and follow the container logs.
5. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
6. Load a supplied Qwen-Image 2.1 workflow and select the downloaded model files.

## Included

- text-to-image workflow and image-edit workflow.
- Text-to-image with prompt enhancer.
- Image editing with prompt enhancer.
- ComfyUI, Code Server, LoRA Manager and SSH from the image2 container.
- Persistent `/workspace` storage.

## Hardware and storage

Tested on **NVIDIA RTX 4090, PRO 6000 MiG 24 Gb, L40S, L4** with **60 GB of volume storage**. BF16 downloads require more volume storage than INT8 ConvRot; allow additional space for profiles using BF16 diffusion and for outputs.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `VRAM_THRESHOLD` | Template value `40`; script fallback `36` if unset | Selects HVRAM when total CUDA-visible VRAM, rounded down to whole GiB, is strictly above this boundary; otherwise LVRAM. Applies to Blackwell GPUs too with these templates. |
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
