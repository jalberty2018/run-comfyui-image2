# Manual provisioning Flux.2 Klein

## 9B

- [HF 9B](https://huggingface.co/black-forest-labs/FLUX.2-klein-9B)
- [HF 9B alternative](https://huggingface.co/kp-forks/FLUX.2-klein-9B)
- [HF base 9B](https://huggingface.co/black-forest-labs/FLUX.2-klein-base-9B)
- [HF ComfyUI 9B](https://huggingface.co/Comfy-Org/vae-text-encorder-for-flux-klein-9b)
- [HF Uncensored clip encoder](https://huggingface.co/ponpoke/flux2-klein-9b-uncensored-text-encoder)
- [BFS-Best-Face-Swap](https://huggingface.co/Alissonerdx/BFS-Best-Face-Swap)
- [9B-reference-pose-lora](https://huggingface.co/thedeoxen/refcontrol-FLUX.2-klein-9B-reference-pose-lora)

## 4B

- [HF ComfyUI 4B](https://huggingface.co/Comfy-Org/flux2-klein-4B/)

## Diffusion_model

### Official 9b (distilled/gated)

```bash
hf download black-forest-labs/FLUX.2-klein-9B flux-2-klein-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### Backup 9b (distilled)

```bash
hf download kp-forks/FLUX.2-klein-9B flux-2-klein-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

```bash
hf download LS110824/Flux2 flux-2-klein.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Official 9b base (gated)

```bash
hf download black-forest-labs/FLUX.2-klein-base-9B flux-2-klein-base-9b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### 4b (distilled)

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/diffusion_models/flux-2-klein-4b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

### 4b base

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/diffusion_models/flux-2-klein-base-4b.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

### ComfyUI 9B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/text_encoders/qwen_3_8b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI fp8 9B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/text_encoders/qwen_3_8b_fp8mixed.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Uncensored 9B 

```bash
hf download ponpoke/flux2-klein-9b-uncensored-text-encoder model.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## ComfyUI 4B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/text_encoders/qwen_3_4b.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### ComfyUI 4B fp8

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b split_files/text_encoders/qwen_3_4b_fp4_flux2.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

### ComfyUI 9B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-9b split_files/vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### ComfyUI 4B

```bash
hf download Comfy-Org/vae-text-encorder-for-flux-klein-4b  split_files/vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## Loras

### Best Face Swap 9B

```bash
hf download Alissonerdx/BFS-Best-Face-Swap  bfs_head_v1_flux-klein_9b_step3500_rank128.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## refcontrol-FLUX.2-klein-9B-reference-pose-lora

```bash
hf download thedeoxen/refcontrol-FLUX.2-klein-9B-reference-pose-lora  refcontrol_v2_poses.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```
