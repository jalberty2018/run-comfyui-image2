# Manual provisioning JoyAI Image Edit

- [Model](https://huggingface.co/jdopensource/JoyAI-Image-Edit-ComfyUI)

## Diffusion_model

### bf16

```bash
hf download jdopensource/JoyAI-Image-Edit-ComfyUI split_files/diffusion_models/joyai_image_edit_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP Text encoder

### bf16

```bash
hf download jdopensource/JoyAI-Image-Edit-ComfyUI split_files/text_encoders/qwen_3vl_8b_joyimage_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Vae

```bash
hf download jdopensource/JoyAI-Image-Edit-ComfyUI split_files/vae/wan_2.1_vae.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```
