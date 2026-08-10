# Manual provisioning Krea-2

## Websites

- [ComfyUI](https://huggingface.co/Comfy-Org/Krea-2)
- [Huihui Qwen3 VL text encoder](https://huggingface.co/ahmed22xa/Huihui-Qwen3-VL-4B-Instruct-abliterated-comfy)
- [Wangkanai Qwen3 VL text encoder](https://huggingface.co/wangkanai/qwen3-vl-4b-instruct)
- [Vae Upscale 2x](https://huggingface.co/spacepxl/Wan2.1-VAE-upscale2x)
- [identity-edit](https://huggingface.co/conradlocke/krea2-identity-edit)
- [Krea2 AnyPaint](https://huggingface.co/yijunwang2/krea2-anypaint)

## Diffusion_model

### Raw bf16

```bash
hf download Comfy-Org/Krea-2 diffusion_models/krea2_raw_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Raw fp8

```bash
hf download Comfy-Org/Krea-2 diffusion_models/krea2_raw_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Raw INT8 convrot

```bash
hf download Comfy-Org/Krea-2 diffusion_models/krea2_raw_int8_convrot.safetensors \
--local-dir=/workspace/ComfyUI/models/diffusion_models/
```

### Turbo bf16

```bash
hf download Comfy-Org/Krea-2 diffusion_models/krea2_turbo_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Turbo fp8

```bash
hf download Comfy-Org/Krea-2 diffusion_models/krea2_turbo_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP Text encoder

### Original bf16

```bash
hf download Comfy-Org/Krea-2 text_encoders/qwen3vl_4b_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Original fp8

```bash
hf download Comfy-Org/Krea-2 text_encoders/qwen3vl_4b_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Abliterated bf16

```bash
hf download ahmed22xa/Huihui-Qwen3-VL-4B-Instruct-abliterated-comfy Huihui-Qwen3-VL-4B-Instruct-abliterated.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

```bash
hf download wangkanai/qwen3-vl-4b-instruct qwen3-vl-4b-instruct-abliterated.safetensors \
--local-dir=/workspace/ComfyUI/models/text_encoders/
```

### Abliterated fp8

```bash
hf download ahmed22xa/Huihui-Qwen3-VL-4B-Instruct-abliterated-comfy Huihui-Qwen3-VL-4B-Instruct-abliterated-fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Heretic bf16

```bash
hf download DreamFast/Qwen3-VL-4b-Heretic-ComfyUI qwen3-vl-4b-heretic.safetensors \
--local-dir=/workspace/ComfyUI/models/text_encoders/
```

## Vae

```bash
hf download Comfy-Org/Krea-2 vae/qwen_image_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

```bash
hf download LS110824/vae krea2RealVae_v10.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## Distilled Lora

### Turbo rank 64 bf16

```bash
hf download Comfy-Org/Krea-2 loras/krea2_turbo_lora_rank_64_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Loras

### Krea2 AnyPaint rank 32

```bash
hf download yijunwang2/krea2-anypaint krea2_anypaint_rank32.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### krea2-identity-edit

```bash
hf download conradlocke/krea2-identity-edit krea2_identity_edit_v1_2_r128.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Krea-2-Turbo-Projector-Scale-LoRA-Diffusers

```bash
hf download Beinsezii/Krea-2-Turbo-Projector-Scale-LoRA-Diffusers pytorch_lora_weights.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Coolblue

```bash
hf download Comfy-Org/Krea-2 loras/krea2_coolblue.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Darkbrush

```bash
hf download Comfy-Org/Krea-2 loras/krea2_darkbrush.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Dotmatrix

```bash
hf download Comfy-Org/Krea-2 loras/krea2_dotmatrix.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Kidsdrawing

```bash
hf download Comfy-Org/Krea-2 loras/krea2_kidsdrawing.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Neondrip

```bash
hf download Comfy-Org/Krea-2 loras/krea2_neondrip.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Plasmoid

```bash
hf download Comfy-Org/Krea-2 loras/krea2_plasmoid.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Rainywindow

```bash
hf download Comfy-Org/Krea-2 loras/krea2_rainywindow.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Retroanime

```bash
hf download Comfy-Org/Krea-2 loras/krea2_retroanime.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Softwatercolor

```bash
hf download Comfy-Org/Krea-2 loras/krea2_softwatercolor.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Sunsetblur

```bash
hf download Comfy-Org/Krea-2 loras/krea2_sunsetblur.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Vintagetarot

```bash
hf download Comfy-Org/Krea-2 loras/krea2_vintagetarot.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Warmpastel

```bash
hf download Comfy-Org/Krea-2 loras/krea2_warmpastel.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```
