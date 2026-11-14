# MiniMax-H3-Image with prompt expander

Generate and edit images with MiniMax-H3-Image in ComfyUI. A pruned INT8 ConvRot diffusion model, INT8 ConvRot text encoder, FP16 VAE, approximate VAE and a VRAM-selected GGUF prompt expander with its vision projector are provisioned automatically.

## Is this the right template?

Choose this template to:

- generate images from text prompts.
- edit existing images or creating new scenes with multiple references.
- use the pruned INT8 ConvRot MiniMax-H3-Image model.
- expand prompts with Qwen3.8-27B-Uncensored or Qwen3-VL-8B-Instruct-Heretic, skills included, selected according to GPU VRAM.

## Fast deployment

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

## VRAM-based prompt expander (PE) model selection

| GPU VRAM | Selection | Prompt expander | Vision projector |
|---|---|---|---|
| Above 32 GiB | HVRAM | Qwen3.8 27B Uncensored Q4_K_M | Qwen3.8 F16 |
| 32 GiB or below | LVRAM | Qwen3-VL-8B-Instruct-Heretic Q6_K | Qwen3-VL-8B Q8_0 |

**Both models work on a 24 GB GPU**, but the larger HVRAM model, normally used for video prompts, causes memory swapping.
The default threshold selects the smaller LVRAM model for a 24 GB GPU.
To choose a different model, change `VRAM_THRESHOLD` in the RunPod template before deployment. For example, on a 24 GB GPU, use `VRAM_THRESHOLD=20` to select HVRAM, or keep `VRAM_THRESHOLD=32` to select LVRAM.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `VRAM_THRESHOLD` | Change prompt expander selection | Default `32` GiB in these templates. Above the threshold selects HVRAM; at or below selects LVRAM. |
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
