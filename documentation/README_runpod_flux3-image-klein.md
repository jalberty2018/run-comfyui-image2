# FLUX 3 Image Klein with Heretic text encoder and VLM

Generate and edit images with FLUX 3 Image Klein in ComfyUI. The INT8 ConvRot diffusion model and text encoder, a Heretic GGUF model with vision projector, the Flux 2 VAE and ready-to-use workflows are provisioned automatically.

## Is this the right template?

Choose this template to:

- generate images with the supplied text-to-image workflow;
- edit images with the supplied image-to-image workflow;
- work with bounding boxes in the image-to-image composition workflow;
- use the prompt and upscaler tools included in these workflows.

## License Flux 3 image klein comfy

- Accept the license on [Black-forest Huggingface](https://huggingface.co/black-forest-labs/flux-3-image-klein-comfy)

## Start here

1. Configure your RunPod image pod with the public FLUX 3 Image Klein environment variables below.
2. Select a supported NVIDIA GPU and sufficient Pod RAM for the selected workflow.
3. Allocate volume storage for the diffusion model, text encoder, GGUF model, vision projector, VAE and generated images.
4. Deploy the pod and follow the container logs.
5. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
6. Load one of the supplied FLUX 3 Image Klein workflows, check its model selections and run a small first test.

## Included models

| Component | Repository | File |
|---|---|---|
| FLUX 3 Image Klein INT8 ConvRot | `LS110824/Flux3` | `flux3-image-klein-int8-convrot.safetensors` |
| Heretic INT8 ConvRot text encoder | `LS110824/text_encoders` | `flux3-klein-te-heretic-int8-convrot.safetensors` |
| Heretic DHQ GGUF model | `pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF` | `flux3-klein-te-heretic-dhq-Q4_K_M.gguf` |
| GGUF vision projector | `pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF` | `mmproj-flux3-klein-te-heretic-dhq-f16.gguf` |
| Flux 2 VAE | `LS110824/vae` | `flux2-vae.safetensors` |

## How the Heretic models are used

| Component | File | Location |
|---|---|---|
| INT8 ConvRot text encoder for image inference | `flux3-klein-te-heretic-int8-convrot.safetensors` | `models/text_encoders` |
| Heretic DHQ GGUF model for the VLM tools | `flux3-klein-te-heretic-dhq-Q4_K_M.gguf` | `models/LLM/Flux-VLM-Heretic` |
| Vision projector for the GGUF model | `mmproj-flux3-klein-te-heretic-dhq-f16.gguf` | `models/LLM/Flux-VLM-Heretic` |

## Hardware and storage

Tested on **NVIDIA RTX 3090/4090, PRO 6000 MiG 24 Gb** with **60 GB of volume storage**.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `PASSWORD` | Optional | Protects Code Server and pod tools. If not set, a password is automatically generated and shown in the container logs. |
| `HF_TOKEN` | Gated/private or rate-limited downloads | Hugging Face authentication |
| `CIVITAI_TOKEN` | CivitAI downloads | Model and LoRA authentication |

The public FLUX 3 Image Klein environment block does not include these optional variables. Store tokens as RunPod secrets. Do not publish them in workflows or screenshots.

## Documentation and help

- [Image inference overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
- [RunPod configuration](https://comfyui.rozenlaan.site/RunPod_configuration/)

## Other templates

- [WAN 2.2 video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3 video](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
