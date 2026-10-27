# Manual provisioning Fibo Image

## Websites

- [ComfyUI model files](https://huggingface.co/Comfy-Org/Fibo-2.0)
- [Original Dev model](https://huggingface.co/briaai/Fibo-2.0-dev)

## Diffusion model

### Dev INT8 ConvRot

```bash
hf download Comfy-Org/Fibo-2.0 diffusion_models/fibo2_dev_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Text encoder

### Qwen3-VL 4B INT8 ConvRot

```bash
hf download Comfy-Org/Fibo-2.0 text_encoders/qwen3vl_4b_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## VAE

```bash
hf download Comfy-Org/Fibo-2.0 vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Turbo LoRA

```bash
hf download Comfy-Org/Fibo-2.0 loras/fibo_2.0_turbo_lora_avg_rank_270_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```
