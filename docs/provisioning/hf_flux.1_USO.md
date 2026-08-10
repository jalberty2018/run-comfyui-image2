# Manual provisioning Flux.1 USO

- [HF Flux](https://huggingface.co/Comfy-Org/flux1-dev)
- [HF USO](https://huggingface.co/Comfy-Org/USO_1.0_Repackaged)
- [HF Redux](https://huggingface.co/Comfy-Org/sigclip_vision_384)

## Diffusion_model

```bash
hf download Comfy-Org/flux1-dev flux1-dev.safetensors \
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

## Lora

```bash
hf download Comfy-Org/USO_1.0_Repackaged split_files/loras/uso-flux1-dit-lora-v1.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Model patch

```bash
hf download Comfy-Org/USO_1.0_Repackaged split_files/model_patches/uso-flux1-projector-v1.safetensors \
--local-dir /workspace/ComfyUI/models/model_patches/
```

## CLIP Vision

```bash
hf download Comfy-Org/sigclip_vision_384 sigclip_vision_patch14_384.safetensors \
--local-dir /workspace/ComfyUI/models/clip_vision/
```

