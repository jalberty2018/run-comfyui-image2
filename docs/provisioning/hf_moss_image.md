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

## LoRAs

### Color depth control

```bash
hf download Comfy-Org/MOSS-Image loras/moss_image_color_depth_control.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Edit LoRA (rank 64, BF16)

```bash
hf download Comfy-Org/MOSS-Image loras/moss_image_edit_lora_rank_64_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Edit lora HQ armV3 and HQ armV5

```bash
hf download akhaliq/MOSS-Image-Edit-HQ weights/armV3/armV3.safetensors --local-dir /tmp/hq && \
  mv /tmp/hq/weights/armV3/armV3.safetensors ComfyUI/models/loras/moss_image_edit_hq_armV3.safetensors
hf download akhaliq/MOSS-Image-Edit-HQ weights/armV5/armV5.safetensors --local-dir /tmp/hq && \
  mv /tmp/hq/weights/armV5/armV5.safetensors ComfyUI/models/loras/moss_image_edit_hq_armV5.safetensors
```
