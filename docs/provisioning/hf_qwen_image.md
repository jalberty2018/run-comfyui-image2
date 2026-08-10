# Qwen image

- [Model](https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI)
- [Lightx2v](https://huggingface.co/lightx2v/Qwen-Image-Lightning/)
- [Fun ControlNet Union](https://huggingface.co/alibaba-pai/Qwen-Image-2512-Fun-Controlnet-Union)

## Diffusion_model 2512

### bf16

```bash
hf download Comfy-Org/Qwen-Image_ComfyUI split_files/diffusion_models/qwen_image_2512_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### fp8

```bash
hf download Comfy-Org/Qwen-Image_ComfyUI split_files/diffusion_models/qwen_image_2512_fp8_e4m3fn.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### fp16

```bash
hf download Comfy-Org/Qwen-Image_ComfyUI split_files/text_encoders/qwen_2.5_vl_7b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp8

```bash
hf download Comfy-Org/Qwen-Image_ComfyUI split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

```bash
hf download Comfy-Org/Qwen-Image_ComfyUI split_files/vae/qwen_image_vae.safetensors
--local-dir /workspace/ComfyUI/models/vae/
```

## Loras 2512

### Lighx2v

#### 4 steps

```bash
hf download lightx2v/Qwen-Image-Lightning Qwen-Image-Lightning-4steps-V1.0.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download lightx2v/Qwen-Image-Lightning Qwen-Image-Lightning-4steps-V2.0.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

#### 8 steps

```bash
hf download lightx2v/Qwen-Image-Lightning Qwen-Image-Lightning-8steps-V2.0.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Fun Controlnet Union

```bash
hf download alibaba-pai/Qwen-Image-2512-Fun-Controlnet-Union Qwen-Image-2512-Fun-Controlnet-Union-2602.safetensors \
--local-dir /workspace/ComfyUI/models/controlnet
```






