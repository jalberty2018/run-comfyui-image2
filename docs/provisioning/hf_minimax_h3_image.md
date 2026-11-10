# Manual provisioning MiniMax-H3-Image

## Websites

- [Official ComfyUI guide](https://docs.comfy.org/tutorials/image/minimax/minimax-h3-image)
- [Diffusion model and VAE](https://huggingface.co/Comfy-Org/MiniMax-H3-Image)
- [Text encoder](https://huggingface.co/Comfy-Org/MiniMax-H3)
- [Prompt expander](https://huggingface.co/Comfy-Org/Qwen3.5)

### Diffusion model: Pruned INT8 ConvRot

```bash
hf download Comfy-Org/MiniMax-H3-Image diffusion_models/minimax_h3_image_pruned_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Text encoder: Qwen3-VL-32B INT8 ConvRot

```bash
hf download Comfy-Org/MiniMax-H3 text_encoders/qwen3vl_32b_minimax_h3_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Prompt expander: Qwen3.5 9B W4A8 GPTQ

```bash
hf download Comfy-Org/Qwen3.5 text_encoders/qwen3.5_9b_w4a8_gptq.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### VAE: FP16

```bash
hf download Comfy-Org/MiniMax-H3-Image vae/minimax_h3_image_vae_fp16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Model storage location

```text
ComfyUI/
└── models/
    ├── diffusion_models/
    │   └── minimax_h3_image_pruned_int8_convrot.safetensors
    ├── text_encoders/
    │   ├── qwen3vl_32b_minimax_h3_int8_convrot.safetensors
    │   └── qwen3.5_9b_w4a8_gptq.safetensors
    └── vae/
        └── minimax_h3_image_vae_fp16.safetensors
```
