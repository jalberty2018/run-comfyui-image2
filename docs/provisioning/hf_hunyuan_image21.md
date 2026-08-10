# Hunyuan image 2.1

- [ComfyUI](https://huggingface.co/Comfy-Org/HunyuanImage_2.1_ComfyUI/tree/main)

## Diffusion mode

### bf16

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/diffusion_models/hunyuanimage2.1_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Refiner bf16

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/diffusion_models/hunyuanimage2.1_refiner_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## Clip Encoder 1

### fp16

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/text_encoders/qwen_2.5_vl_7b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp8

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### GGUF 8bit abliturated

```bash
hf download mradermacher/Qwen2.5-VL-7B-Instruct-abliterated-GGUF Qwen2.5-VL-7B-Instruct-abliterated.Q8_0.gguf \
--local-dir=/workspace/models/text_encoders/
```

## CLIP Encoder 2

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/text_encoders/byt5_small_glyphxl_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## VAE

### fp16

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/vae/hunyuan_image_2.1_vae_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Refiner fp16

```bash
hf download Comfy-Org/HunyuanImage_2.1_ComfyUI split_files/vae/hunyuan_image_refiner_vae_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```