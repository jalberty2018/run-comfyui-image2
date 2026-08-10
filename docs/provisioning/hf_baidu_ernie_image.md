# Manual provisioning Baidu ERNIE-Image

## Websites

- [ComfyUI](https://huggingface.co/Comfy-Org/ERNIE-Image)
- [Baidu](https://huggingface.co/baidu/ERNIE-Image)

## Diffusion_model

### Turbo

```bash
hf download Comfy-Org/ERNIE-Image diffusion_models/ernie-image-turbo.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### Base

```bash
hf download Comfy-Org/ERNIE-Image diffusion_models/ernie-image.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### Encoder

```bash
hf download Comfy-Org/ERNIE-Image text_encoders/ministral-3-3b.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Enhancer

```bash
hf download Comfy-Org/ERNIE-Image text_encoders/ernie-image-prompt-enhancer.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### Flux

```bash
hf download Comfy-Org/ERNIE-Image vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

