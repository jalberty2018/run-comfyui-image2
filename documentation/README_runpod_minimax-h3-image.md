# MiniMax-H3-Image with Qwen3.8 prompt expander

Generate and edit images with MiniMax-H3-Image in ComfyUI. A pruned INT8 ConvRot diffusion model, INT8 ConvRot text encoder, FP16 VAE, approximate VAE and Qwen3.8 Q4_K_M GGUF prompt expander are provisioned automatically.

## Is this the right template?

Choose this template to:

- generate images from text prompts;
- edit existing images;
- use the pruned INT8 ConvRot MiniMax-H3-Image model;
- expand prompts with the included Qwen3.8 model.

## Fast deployment

1. Choose an available **GPU**, preferably one marked with an asterisk (*).
2. Choose the **Volume Disk (Legacy)** mounted at `/workspace`, keep or increase the size if needed.
3. Enable volume encryption if desired.
4. Click **Deploy Pod**.
5. Wait for provisioning to finish, then open ComfyUI.

## Step by step deployment/usage with screenshots and troubleshooting

- [Deployment guide](https://comfyui.rozenlaan.site/ComfyUI_image_deployment/)
- [Start with ComfyUI](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)

## Included models

| Component | Repository | File |
|---|---|---|
| Pruned INT8 ConvRot diffusion model | `Comfy-Org/MiniMax-H3-Image` | `diffusion_models/minimax_h3_image_pruned_int8_convrot.safetensors` |
| INT8 ConvRot text encoder | `Comfy-Org/MiniMax-H3` | `text_encoders/qwen3vl_32b_minimax_h3_int8_convrot.safetensors` |
| FP16 VAE | `Comfy-Org/MiniMax-H3-Image` | `vae/minimax_h3_image_vae_fp16.safetensors` |
| Approximate VAE | `Kijai/MiniMax-H3-TAE` | `vae_approx/taeh3.safetensors` |
| Qwen3.8 Q4_K_M GGUF prompt expander | `theresa00l/Qwen3.8-27B-Uncensored-FP8-Q4_K_M-GGUF` | `qwen3.8-27b-uncensored-fp8-q4_k_m.gguf` |
| Qwen3.8 F16 vision projector | `unsloth/Qwen3.8-27B-GGUF` | `mmproj-F16.gguf` |

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
