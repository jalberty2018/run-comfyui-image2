# Manual provisioning Z-Image

- [HF ComfyUI](https://huggingface.co/Comfy-Org/z_image)
- [HF Original](https://huggingface.co/Tongyi-MAI/Z-Image)
- [Vae](https://huggingface.co/wangkanai/flux-dev-fp16)
- [Clear Vae](https://huggingface.co/easygoing0114/Z-Image_clear_vae)
- [Z-Image-Fun-Controlnet-Union](https://huggingface.co/alibaba-pai/Z-Image-Fun-Controlnet-Union-2.1)
- [Clip abliturated](https://huggingface.co/chinmankokumin/Qwen3-4B-abliterated-v2)

## Diffusion_model

### bf16

```bash
hf download Comfy-Org/z_image split_files/diffusion_models/z_image_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### Standard

```bash
hf download Comfy-Org/z_image split_files/text_encoders/qwen_3_4b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Abliturated

```bash
hf download chinmankokumin/Qwen3-4B-abliterated-v2 qwen_3_4b_abliterated_v2.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### Original

```bash
hf download Comfy-Org/z_image split_files/vae/ae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### bf16

```bash
hf download wangkanai/flux-dev-fp16 vae/flux/flux-vae-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae
```

### Image_clear_vae

#### Natural

```bash
hf download easygoing0114/Z-Image_clear_vae Z-Image_natural_vae.safetensors \ 
--local-dir=/workspace/ComfyUI/models/vae
```

#### Clear

```bash
hf download easygoing0114/Z-Image_clear_vae Z-Image_clear_vae.safetensors \ 
--local-dir=/workspace/ComfyUI/models/vae
```

## Fun-Control patch

```bash
hf download alibaba-pai/Z-Image-Fun-Controlnet-Union-2.1 Z-Image-Fun-Controlnet-Union-2.1.safetensors \
--local-dir /workspace/ComfyUI/models/model_patches
```

```bash
hf download alibaba-pai/Z-Image-Fun-Controlnet-Union-2.1 Z-Image-Fun-Controlnet-Union-2.1-lite.safetensors \
--local-dir /workspace/ComfyUI/models/model_patches
```

