# Manual provisioning MOSS-Image

## Websites

- [Official ComfyUI guide](https://docs.comfy.org/tutorials/image/moss-image/moss-image)
- [ComfyUI model files](https://huggingface.co/Comfy-Org/MOSS-Image)
- [Original project](https://github.com/OpenMOSS/MOSS-Image)

## Diffusion models

### SFT INT8 ConvRot

Used by the standard text-to-image and layout-guided workflows.

```bash
hf download Comfy-Org/MOSS-Image diffusion_models/moss_image_sft_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Base INT8 ConvRot

Required only for the two Base workflows.

```bash
hf download Comfy-Org/MOSS-Image diffusion_models/moss_image_base_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Optional BF16 alternatives

These require more VRAM. After downloading, select the corresponding BF16 file in the workflow's `UNET Loader` inside the subgraph.

```bash
hf download Comfy-Org/MOSS-Image diffusion_models/moss_image_sft_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/

hf download Comfy-Org/MOSS-Image diffusion_models/moss_image_base_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Text encoders

### Original INT8 ConvRot

```bash
hf download Comfy-Org/MOSS-Image text_encoders/qwen3.5_9b_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Heretic INT8 ConvRot

```bash
hf download DarkRomeo88/Qwen3.5-9B-uncensored-heretic-ComfyUI qwen3.5_9b_uncensored_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## VAE

```bash
hf download Comfy-Org/MOSS-Image vae/flux2-vae_small.safetensors \
--local-dir /workspace/ComfyUI/models/
```
