# Manual provisioning FLUX 3 Image Klein

## Websites

- [Official ComfyUI guide](https://docs.comfy.org/tutorials/flux/flux-3-klein)
- [Official ComfyUI model files](https://huggingface.co/black-forest-labs/flux-3-image-klein-comfy)

## Requirements

Accept the license and obtain access on the model repository page using the account associated with your Hugging Face token. The commands below use the pod's existing `HF_TOKEN`; if it is not set, authenticate interactively with `hf auth login` first.

## Diffusion models

### Base INT8 ConvRot

Full checkpoint for text-to-image and image editing.

```bash
hf download black-forest-labs/flux-3-image-klein-comfy diffusion_models/flux3-image-klein-base-int8-convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

### Distilled INT8 ConvRot

Step-distilled checkpoint for text-to-image and image editing, using 4–16 steps and CFG 1.

```bash
hf download black-forest-labs/flux-3-image-klein-comfy diffusion_models/flux3-image-klein-int8-convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Text encoder INT8 ConvRot

Shared by both checkpoints. Select `flux3` as the `CLIPLoader` type.

```bash
hf download black-forest-labs/flux-3-image-klein-comfy text_encoders/qwen3vl_4b_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## Alternative text encoder Heretic BF16

```bash
hf download pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF flux3-klein-te-heretic-bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## Prompt upsampler INT8 ConvRot

```bash
hf download black-forest-labs/flux-3-image-klein-comfy text_encoders/qwen3.5_9b_flux3_prompt_upsampler_int8_convrot.safetensors \
--local-dir /workspace/ComfyUI/models/
```

## VAE

```bash
hf download black-forest-labs/flux-3-image-klein-comfy vae/flux2-vae.safetensors \
--local-dir /workspace/ComfyUI/models/
```
