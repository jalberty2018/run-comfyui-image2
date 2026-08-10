# Manual provisioning Flux.1 dev SRPO

- [HF Flux SRPO](https://huggingface.co/tencent/SRPO)
- [HF Flux.1 dev SRPO](https://huggingface.co/rockerBOO/flux.1-dev-SRPO)

## Diffusion_model

```bash
hf download rockerBOO/flux.1-dev-SRPO flux.1-dev-SRPO-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
``` 

## CLIP Text encoder

```bash
hf download comfyanonymous/flux_text_encoders t5xxl_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/

hf download comfyanonymous/flux_text_encoders clip_l.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/

hf download zer0int/CLIP-GmP-ViT-L-14 ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

```bash
hf download black-forest-labs/FLUX.1-Kontext-dev ae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```
