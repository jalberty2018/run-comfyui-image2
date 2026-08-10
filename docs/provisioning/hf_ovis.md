# Ovis image

[Huggingface](https://huggingface.co/Comfy-Org/Ovis-Image)

## Diffusion_model

```bash
hf download Comfy-Org/Ovis-Image split_files/diffusion_models/ovis_image_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

```bash
hf download Comfy-Org/Ovis-Image split_files/text_encoders/ovis_2.5.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### Official

```bash
hf download black-forest-labs/FLUX.2-dev ae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### ComfyUI

```bash
hf download Comfy-Org/flux2-dev split_files/vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

#### bf16

```bash
hf download wangkanai/flux-dev-fp16 vae/flux/flux-vae-bf16.safetensors \
—local-dir /workspace/ComfyUI/models/vae
```
