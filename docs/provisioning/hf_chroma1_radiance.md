# Chroma1 Radiance

- [HF](https://huggingface.co/lodestones/Chroma1-Radiance)

## Diffusion model

```bash
hf download lodestones/Chroma1-Radiance latest_x0.safetensors \
  --local-dir ComfyUI/models/diffusion_models
```

## CLIP Text encoder

```bash
hf download comfyanonymous/flux_text_encoders t5xxl_fp8_e4m3fn_scaled.safetensors \
  --local-dir ComfyUI/models/text_encoders
```
