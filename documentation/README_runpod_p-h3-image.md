# P-H3-Image with BF16 prompt upsampler

Image model based on Minimax H3 video model.

Generate and edit images with P-H3-Image in ComfyUI. A W4A8 or INT8 ConvRot diffusion model and matching text encoder, the BF16 prompt upsampler, INT8 ConvRot VAE, approximate VAE and ready-to-use workflows are provisioned automatically.

## Is this the right template?

Choose this template to:

- generate images with the supplied text-to-image workflow;
- edit images or compose scenes with the supplied image-to-image workflow;
- create character sheets from reference images with the supplied workflow;
- use the included BF16 prompt upsampler;
- automatically select W4A8 or INT8 ConvRot models based on available VRAM.

## Fast deployment

1. Choose an available **GPU**, preferably one marked with an asterisk (*), 24 Gb VRAM works perfect.
3. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
4. Enable volume encryption if desired.
5. Click **Deploy Pod**.
6. Choose one of the included tested workflows or ComfyUI's own templates.

## Step by step deployment/usage with sceenshots and trouble shooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

## Included models

| Total VRAM (whole GiB) | Profile | Diffusion model | Text encoder |
|---|---|---|---|
| Above 32 | HVRAM | INT8 ConvRot | INT8 ConvRot |
| 32 or below | LVRAM | W4A8 | W4A8 |

| Component | Repository | File |
|---|---|---|
| HVRAM diffusion model | `PrunaAI/P-H3-Image-Comfy` | `diffusion_models/p-h3-image_int8_convrot.safetensors` |
| HVRAM text encoder | `PrunaAI/P-H3-Image-Comfy` | `text_encoders/p-h3-image_text_encoder_int8_convrot.safetensors` |
| LVRAM diffusion model | `PrunaAI/P-H3-Image-Comfy` | `diffusion_models/p-h3-image_w4a8.safetensors` |
| LVRAM text encoder | `PrunaAI/P-H3-Image-Comfy` | `text_encoders/p-h3-image_text_encoder_w4a8.safetensors` |
| BF16 prompt upsampler | `PrunaAI/P-H3-Image-Comfy` | `text_encoders/p-h3-image_prompt_upsampler_bf16.safetensors` |
| INT8 ConvRot VAE | `PrunaAI/P-H3-Image-Comfy` | `vae/p-h3-image_vae_int8_convrot.safetensors` |
| Approximate VAE | `Kijai/MiniMax-H3-TAE` | `vae_approx/taeh3.safetensors` |

The prompt upsampler and both VAEs are downloaded for both VRAM profiles.

## Included workflows

| Workflow | File |
|---|---|
| Image-to-image | `p-h3-image-i2i-pod.json` |
| Text-to-image | `p-h3-image-t2i-pod.json` |
| Character sheet design | `p-h3-image-character-sheet-pod.json` |

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `PASSWORD` | Optional | Protects Code Server and pod tools. If not set, a password is automatically generated and shown in the container logs. |
| `HF_TOKEN` | Gated/private or rate-limited downloads | Hugging Face authentication |
| `CIVITAI_TOKEN` | Additional CivitAI downloads | Not required for the model files listed here. |

## Documentation and help

- [Image inference overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
- [RunPod configuration](https://comfyui.rozenlaan.site/RunPod_configuration/)

## Other templates

- [WAN 2.2 video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3 video](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
