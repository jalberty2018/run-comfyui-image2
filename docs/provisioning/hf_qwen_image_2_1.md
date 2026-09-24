# Manual provisioning Qwen-Image 2.1

## Websites

- [ComfyUI announcement](https://blog.comfy.org/p/qwen-image-21-in-comfyui-open-weight)
- [Original model](https://huggingface.co/Qwen/Qwen-Image-2.1)
- [ComfyUI model files](https://huggingface.co/Comfy-Org/Qwen-Image-2.1)
- [Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot](https://huggingface.co/pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot)
- [Qwen-Image-2.1-PE-T2I-Heretic](https://huggingface.co/pottokao/Qwen-Image-2.1-PE-T2I-Heretic)

## Diffusion model

### BF16

```bash
hf download Comfy-Org/Qwen-Image-2.1 diffusion_models/qwen_image_2.1_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 diffusion_models/qwen_image_2.1_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## CLIP text encoder

### BF16

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3vl_8b_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3vl_8b_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### W4A8

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3vl_8b_w4a8.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Heretic INT8 ConvRot (public and private templates)

```bash
hf download pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot qwen3vl_8b_int8_convrot_heretic.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

Select `qwen3vl_8b_int8_convrot_heretic.safetensors` in `CLIPLoader`, with type `qwen_image`, for use with `TextEncodeQwenImage21`. Requires a ComfyUI build with Qwen-Image 2.1 support. The download is about 8.71 GB. This encoder replaces Heretic W4A8 in all public and private template profiles. The original Comfy-Org text encoder is also included: BF16 for HVRAM and HVRAM_BLACKWELL, or INT8 ConvRot for LVRAM.

## Qwen3.5 9B prompt enhancer

### Image-to-image INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3.5_9b_qwen_image_2.1_pe_i2i.int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Text-to-image INT8 ConvRot

```bash
hf download Comfy-Org/Qwen-Image-2.1 text_encoders/qwen3.5_9b_qwen_image_2.1_pe_t2i.int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Optional Heretic text-to-image prompt enhancer (BF16)

- [Qwen-Image-2.1-PE-T2I-Heretic](https://huggingface.co/pottokao/Qwen-Image-2.1-PE-T2I-Heretic)

Download the complete Transformers repository, including all four weight shards, tokenizer, configuration and `system_prompt.txt` (about 18.8 GB). Use the included system prompt when running the model with a compatible Transformers runtime. This is a prompt rewriter, not a drop-in model for ComfyUI's `CLIPLoader` or the llama.cpp GGUF loader.

```bash
hf download pottokao/Qwen-Image-2.1-PE-T2I-Heretic \
--local-dir /workspace/ComfyUI/models/LLM/Qwen-Image-2.1-PE-T2I-Heretic/
```

### Heretic Q8_0 GGUF prompt enhancers

#### Text-to-image Q8_0

```bash
hf download pottokao/Qwen-Image-2.1-PE-T2I-Heretic-GGUF pe_t2i_heretic-Q8_0.gguf \
--local-dir /workspace/ComfyUI/models/LLM/Qwen-Image-2.1-PE-T2I-Heretic-GGUF/
```

#### Image-to-image Q8_0 and BF16 vision projector

```bash
hf download pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF pe_i2i_heretic-Q8_0.gguf pe_i2i_heretic.mmproj-bf16.gguf \
--local-dir /workspace/ComfyUI/models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF/
```

Keep the vision projector beside the I2I model; it is required when supplying images. In the `Qwen Image 2.1 Prompt (Local)` node, select the corresponding Q8_0 model files for T2I and I2I.

## VAE

```bash
hf download Comfy-Org/Qwen-Image-2.1 vae/qwen_image_2.1_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/
```
