# Manual provisioning Mage Flow

- [Model](https://huggingface.co/Comfy-Org/Mage-Flow)

## Diffusion model

### BF16

```bash
hf download Comfy-Org/Mage-Flow diffusion_models/mage_flow_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### INT8 ConvRot

```bash
hf download Comfy-Org/Mage-Flow diffusion_models/mage_flow_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Edit BF16

```bash
hf download Comfy-Org/Mage-Flow diffusion_models/mage_flow_edit_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### Edit INT8 ConvRot

```bash
hf download Comfy-Org/Mage-Flow diffusion_models/mage_flow_edit_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## CLIP text encoder

### BF16

```bash
hf download Comfy-Org/Mage-Flow text_encoders/qwen3vl_4b_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## VAE

### BF16

```bash
hf download Comfy-Org/Mage-Flow vae/mage_flow_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```
