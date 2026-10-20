# MOSS-Image SFT and Base with Qwen3.5

Generate and edit images with MOSS-Image SFT or Base in ComfyUI. Both INT8 ConvRot diffusion models, two Qwen3.5 text encoders, the Flux 2 VAE and ready-to-use workflows are provisioned automatically.

## Is this the right template?

Choose this template to:

- generate images with MOSS-Image SFT or Base;
- edit images with the supplied Ostris editing workflow;
- build compositions with the text-to-image bounding-box workflow;
- use the supplied VLM text-to-image workflow.

## Start here

1. Configure your RunPod image pod.
2. Select a supported NVIDIA GPU and sufficient Pod RAM for the selected workflow.
3. Allocate volume storage for both diffusion models, both text encoders, the VAE and generated images.
4. Deploy the pod and follow the container logs.
5. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
6. Load one of the supplied MOSS-Image workflows, check its model selections and run a small first test.

## Included models

| Component | Repository | File |
|---|---|---|
| MOSS-Image SFT | `Comfy-Org/MOSS-Image` | `diffusion_models/moss_image_sft_int8_convrot.safetensors` |
| MOSS-Image Base | `Comfy-Org/MOSS-Image` | `diffusion_models/moss_image_base_int8_convrot.safetensors` |
| Flux 2 VAE | `Comfy-Org/MOSS-Image` | `vae/flux2-vae.safetensors` |

Both diffusion models and both text encoders are downloaded

## How Qwen3.5 is used

| Encoder | Repository | File |
|---|---|---|
| Qwen3.5 9B | `Comfy-Org/MOSS-Image` | `text_encoders/qwen3.5_9b_int8_convrot.safetensors` |
| Abliterated Qwen3.5 9B vision variant | `DrHippie/qwen3.5-9b_abliterated_0x100refusal_vision_int8_convrot` | `qwen3.5-9b_abliterated_0x100refusal_vision_int8_convrot.safetensors` |

Select the encoder required by the loaded workflow in its model loader.

## Hardware and storage

Tested on **NVIDIA RTX 3090/4090, PRO 6000 MiG 24 Gb** with **60 GB of volume storage**.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `PASSWORD` | Optional | Protects Code Server and pod tools. If not set, a password is automatically generated and shown in the container logs. |
| `HF_TOKEN` | Gated/private or rate-limited downloads | Hugging Face authentication |
| `CIVITAI_TOKEN` | CivitAI downloads | Model and LoRA authentication |

The public MOSS-Image environment block does not include these optional variables. Store tokens as RunPod secrets. Do not publish them in workflows or screenshots.

## Documentation and help

- [Image inference overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
- [RunPod configuration](https://comfyui.rozenlaan.site/RunPod_configuration/)

## Other templates

- [WAN 2.2 video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3 video](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
