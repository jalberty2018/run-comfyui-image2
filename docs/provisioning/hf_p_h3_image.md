# Manual provisioning P-H3-Image

## Websites

- [ComfyUI model files and official instructions](https://huggingface.co/PrunaAI/P-H3-Image-Comfy)
- [Original model](https://huggingface.co/PrunaAI/P-H3-Image)
- [Example workflows](https://huggingface.co/PrunaAI/P-H3-Image-Comfy/tree/main/workflows)

### Diffusion model

```bash
hf download PrunaAI/P-H3-Image-Comfy diffusion_models/p-h3-image_w4a8.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Text encoder

```bash
hf download PrunaAI/P-H3-Image-Comfy text_encoders/p-h3-image_text_encoder_w4a8.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Prompt upsampler

```bash
hf download PrunaAI/P-H3-Image-Comfy text_encoders/p-h3-image_prompt_upsampler_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### VAE

```bash
hf download PrunaAI/P-H3-Image-Comfy vae/p-h3-image_vae_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Alternative precisions

Use these instead of the corresponding default files; you do not need every variant.

### Diffusion model

```bash
hf download PrunaAI/P-H3-Image-Comfy diffusion_models/p-h3-image_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

```bash
hf download PrunaAI/P-H3-Image-Comfy diffusion_models/p-h3-image_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Text encoder

```bash
hf download PrunaAI/P-H3-Image-Comfy text_encoders/p-h3-image_text_encoder_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

```bash
hf download PrunaAI/P-H3-Image-Comfy text_encoders/p-h3-image_text_encoder_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Prompt upsampler

```bash
hf download PrunaAI/P-H3-Image-Comfy text_encoders/p-h3-image_prompt_upsampler_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

```bash
hf download PrunaAI/P-H3-Image-Comfy text_encoders/p-h3-image_prompt_upsampler_w4a8.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### VAE

```bash
hf download PrunaAI/P-H3-Image-Comfy vae/p-h3-image_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```
