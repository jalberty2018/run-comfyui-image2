# Manual provisioning Flux.2 Dev

- [Black-forest-labs](https://huggingface.co/black-forest-labs/FLUX.2-dev)
- [ComfyUI](https://huggingface.co/Comfy-Org/flux2-dev)
- [Multi angles lora]https://huggingface.co/lovis93/Flux-2-Multi-Angles-LoRA-v2

## Diffusion_model

### Official

```bash
hf download black-forest-labs/FLUX.2-dev flux2-dev.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### ComfyUI fp8mixed

```bash
hf download Comfy-Org/flux2-dev split_files/diffusion_models/flux2_dev_fp8mixed.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### Official

```bash
hf download black-forest-labs/FLUX.2-dev text_encoder \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI bf16

```bash
hf download Comfy-Org/flux2-dev split_files/text_encoders/mistral_3_small_flux2_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI fp8

```bash
hf download Comfy-Org/flux2-dev split_files/text_encoders/mistral_3_small_flux2_fp8.safetensors \
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

### bf16

```bash
hf download wangkanai/flux-dev-fp16 vae/flux/flux-vae-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae
```

## Turbo lora

```bash
hf download fal/FLUX.2-dev-Turbo flux.2-turbo-lora.safetensors \ 
--local-dir /workspace/ComfyUI/models/loras
```

## Loras

```bash
hf download lovis93/Flux-2-Multi-Angles-LoRA-v2 flux-multi-angles-v2-72poses-comfy.safetensors \
--local-dir /workspace/ComfyUI/models/loras
```