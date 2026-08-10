# Qwen Image Layered

- [Model](https://huggingface.co/Comfy-Org/Qwen-Image-Layered_ComfyUI)

## Diffusion_model

### bf16

```bash
hf download Comfy-Org/Qwen-Image-Layered_ComfyUI split_files/diffusion_models/qwen_image_layered_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### fp8

```bash
hf download Comfy-Org/Qwen-Image-Layered_ComfyUI split_files/diffusion_models/qwen_image_layered_fp8mixed.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP Text encoder

### fp16

```bash
hf download Comfy-Org/HunyuanVideo_1.5_repackaged split_files/text_encoders/qwen_2.5_vl_7b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp8

```bash
hf download Comfy-Org/HunyuanVideo_1.5_repackaged split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

```bash
hf download Comfy-Org/Qwen-Image-Layered_ComfyUI split_files/vae/qwen_image_layered_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```


