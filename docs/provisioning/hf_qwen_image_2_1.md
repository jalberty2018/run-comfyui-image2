# Manual provisioning Qwen-Image 2.1

## Websites

- [ComfyUI announcement](https://blog.comfy.org/p/qwen-image-21-in-comfyui-open-weight)
- [Original model](https://huggingface.co/Qwen/Qwen-Image-2.1)
- [ComfyUI model files](https://huggingface.co/Comfy-Org/Qwen-Image-2.1)

## Diffusion model

### BF16

```bash
hf download Comfy-Org/Qwen-Image-2.1 diffusion_models/qwen_image_2.1_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 diffusion_models/qwen_image_2.1_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## CLIP text encoder

### BF16

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3vl_8b_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3vl_8b_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### W4A8

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3vl_8b_w4a8.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Qwen3.5 9B prompt enhancer

### Image-to-image INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3.5_9b_qwen_image_2.1_pe_i2i.int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Text-to-image INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3.5_9b_qwen_image_2.1_pe_t2i.int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## VAE

```bash
hf download Comfy-Org/Qwen-Image-2.1 vae/qwen_image_2.1_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```
