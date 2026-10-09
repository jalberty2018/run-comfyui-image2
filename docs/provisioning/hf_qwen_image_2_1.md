# Manual provisioning Qwen-Image 2.1

## Websites

- [ComfyUI announcement](https://blog.comfy.org/p/qwen-image-21-in-comfyui-open-weight)
- [Original model](https://huggingface.co/Qwen/Qwen-Image-2.1)
- [ComfyUI model files](https://huggingface.co/Comfy-Org/Qwen-Image-2.1)
- [Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot](https://huggingface.co/pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot)
- [akhaliq/Qwen-Image-2.1-Multiple-Angles-LoRA](https://huggingface.co/akhaliq/Qwen-Image-2.1-Multiple-Angles-LoRA)

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

### Heretic INT8 ConvRot

```bash
hf download pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot qwen3vl_8b_int8_convrot_heretic.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## VAE

```bash
hf download Comfy-Org/Qwen-Image-2.1 vae/qwen_image_2.1_vae_bf16.safetensors \
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

## Multiple Angles LoRA

Optional manual download of the v2 step-1500 checkpoint (about 319 MB):

```bash
hf download akhaliq/Qwen-Image-2.1-Multiple-Angles-LoRA checkpoints_v2/angles_v2_full_qwen21_multiple_angles_v2_qwen21_multiple_angles_v2_000001500.safetensors \
--local-dir /workspace/ComfyUI/models/loras/qwen_image_2_1_multiple_angles/
```
