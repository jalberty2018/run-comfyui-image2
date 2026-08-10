# Qwen image edit

- [Model](https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI)
- [Lightx2v](https://huggingface.co/lightx2v/Qwen-Image-Edit-2511-Lightning)
- [Next scene](https://huggingface.co/lovis93/next-scene-qwen-image-lora-2509)

## Diffusion_model 2511

### bf16

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/diffusion_models/qwen_image_edit_2511_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### fp8

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/diffusion_models/qwen_image_edit_2511_fp8mixed.safetensors \
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
hf download Comfy-Org/Qwen-Image_ComfyUI split_files/vae/qwen_image_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## Loras 2511

### Lighx2v

#### bf16 4steps

```bash
hf download lightx2v/Qwen-Image-Edit-2511-Lightning Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

#### fp32 4steps

```bash
hf download lightx2v/Qwen-Image-Edit-2511-Lightning Qwen-Image-Edit-2511-Lightning-4steps-V1.0-fp32.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

#### bf16 8steps

```bash
hf download lightx2v/Qwen-Image-Edit-2511-Lightning Qwen-Image-Edit-2511-Lightning-8steps-V1.0-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

#### fp32 8steps

```bash
hf download lightx2v/Qwen-Image-Edit-2511-Lightning Qwen-Image-Edit-2511-Lightning-8steps-V1.0-fp32.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Lora's 2509

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/loras/Qwen-Image-Edit-2509-Anything2RealAlpha.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/loras/Qwen-Image-Edit-2509-Fusion.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/loras/Qwen-Image-Edit-2509-Relight.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/loras/Qwen-Image-Edit-2509-White_to_Scene.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download Comfy-Org/Qwen-Image-Edit_ComfyUI split_files/loras/Qwen-Edit-2509-Multiple-angles.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download lovis93/next-scene-qwen-image-lora-2509 next-scene_lora-v2-3000.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```




