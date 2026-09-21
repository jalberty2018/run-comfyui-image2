# Qwen-Image 2.1 — with prompt enhancer

Run Qwen-Image 2.1 for text-to-image and image editing with the image2 container. Models and the supplied Qwen workflows download when the pod starts.

See also the [version without prompt enhancer](https://console.runpod.io/hub/template/l9es28w20d?ref=se4tkc5o).

## Included models

| Model file | Role |
|---|---|
| `qwen_image_2.1_int8_convrot.safetensors` | Diffusion model for image generation and editing. |
| `qwen3vl_8b_int8_convrot.safetensors` | Standard text encoder for the image workflow. |
| `qwen3vl_8b_w4a8_heretic.safetensors` | Alternative Heretic text encoder. Select it in `CLIPLoader` with type `qwen_image`. |
| `qwen_image_2.1_vae_bf16.safetensors` | VAE for conversion between pixels and image latents. |

### Additional prompt enhancers

| Model file | Role |
|---|---|
| `qwen3.5_9b_qwen_image_2.1_pe_t2i.int8_convrot.safetensors` | Qwen3.5 9B prompt enhancer for text-to-image prompts. |
| `qwen3.5_9b_qwen_image_2.1_pe_i2i.int8_convrot.safetensors` | Qwen3.5 9B prompt enhancer for image-edit instructions. |

## Start here

1. This [template](https://console.runpod.io/hub/template/m3upcvmvw4?ref=se4tkc5o)
2. Select a supported NVIDIA GPU and sufficient Pod RAM.
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

Tested on **NVIDIA L40S and RTX 4090** with **60 GB of volume storage**; see the prompt-enhancement limitation below.

> **Host driver note:** Qwen 3.5 prompt expansion using comfy-kitchen's `deltanet_conv_step` failed on an RTX 4090 host with NVIDIA **570.195.03**, while the identical container/workflow succeeded on an L40S host with NVIDIA **580.159.04**. Both exposed SM89 and ran PyTorch **2.10.0+cu128** / cuDNN **91002**. The host driver is the strongest observed, technically plausible difference, but is not yet a confirmed cause.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
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
