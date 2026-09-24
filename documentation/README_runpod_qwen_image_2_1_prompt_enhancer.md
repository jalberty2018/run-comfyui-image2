# Qwen-Image 2.1 — with prompt enhancer

Run Qwen-Image 2.1 for text-to-image and image editing with the image2 container. Models and the supplied Qwen workflows download when the pod starts.

See also the [version without prompt enhancer](https://console.runpod.io/hub/template/l9es28w20d?ref=se4tkc5o).

## Included models

| Total VRAM (whole GiB) | Profile | Diffusion | Text encoders |
|---|---|---|---|
| Above 40 | HVRAM | BF16 | Standard BF16 and Heretic INT8 ConvRot |
| 40 or below | LVRAM | INT8 ConvRot | Heretic INT8 ConvRot |

| Model file | Role |
|---|---|
| `qwen_image_2.1_bf16.safetensors` (HVRAM) / `qwen_image_2.1_int8_convrot.safetensors` (LVRAM) | Diffusion model for image generation and editing, stored in `models/diffusion_models/`. |
| `qwen3vl_8b_bf16.safetensors` (HVRAM only) | Standard text encoder, stored in `models/text_encoders/`. |
| `qwen3vl_8b_int8_convrot_heretic.safetensors` (both profiles) | Heretic text encoder, stored in `models/text_encoders/`. It is the only text encoder downloaded for LVRAM and an additional option for HVRAM. Select it in `CLIPLoader` with type `qwen_image`. |
| `qwen_image_2.1_vae_bf16.safetensors` (both profiles) | VAE for conversion between pixels and image latents, stored in `models/vae/`. |

### Additional prompt enhancers

The prompt-enhancer template downloads these Heretic GGUF files for both VRAM profiles through `HF_MODEL_FILE1..3`. All paths below are relative to `/workspace/ComfyUI/`.

| Model file | Role | Destination directory |
|---|---|---|
| `pe_t2i_heretic-Q8_0.gguf` | Q8_0 prompt enhancer for text-to-image prompts. | `models/LLM/Qwen-Image-2.1-PE-T2I-Heretic-GGUF/` |
| `pe_i2i_heretic-Q8_0.gguf` | Q8_0 prompt enhancer for image-edit instructions. | `models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF/` |
| `pe_i2i_heretic.mmproj-bf16.gguf` | BF16 multimodal projector accompanying the I2I prompt enhancer. | `models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF/` |

The T2I file comes from `pottokao/Qwen-Image-2.1-PE-T2I-Heretic-GGUF`; the I2I model and projector come from `pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF`.

## Start here

1. This [template](https://console.runpod.io/hub/template/g8ow1s1s0a?ref=se4tkc5o)
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
