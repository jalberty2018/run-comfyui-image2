# Krea-2 Base and Turbo with uncensored Qwen-VL

Generate and edit images with Krea-2 Base or the Turbo LoRA in ComfyUI. Models, VAEs, LoRAs, custom nodes and ready-to-use workflows are provisioned automatically.

**Uncensored Qwen-VL:** this template includes an abliterated Qwen3-VL-4B model without an additional prompt-filtering layer. The same model supports both Krea-2 inference and visual prompt enhancement. Users remain responsible for model use and generated content.

## Is this the right template?

Choose this template to:

- generate images with Krea-2 Base or the faster Turbo LoRA;
- create or improve prompts from text and visual input;
- edit images, transfer styles or preserve identity;
- build compositions and generate image captions.

## How Qwen-VL is used

| Mode | What Qwen-VL does | Extra model download |
|---|---|---|
| **Krea-2 inference** | Encodes your prompt for image generation | No; required component |

High-VRAM profiles use the uncensored `qwen3-vl-4b-instruct-abliterated` encoder. Low-VRAM profiles use its FP8-scaled abliterated variant.

## Start here

1. [Deploy the Krea-2 Base + Turbo template](https://console.runpod.io/deploy?template=e2hlyrm22l&ref=se4tkc5o).
2. Select a supported NVIDIA GPU and sufficient Pod RAM (CUDA 13.x required).
3. Use at least 60 GB volume storage for BF16 or 50 GB for the low-VRAM model.
5. Deploy the pod and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
7. Load one of the supplied Krea-2 workflows and run a small first test.

## Included workflows and tools

- Text-to-image with direct or enhanced prompts.
- Qwen-VL visual prompting and artist-style guidance.
- Image-to-image editing and style transfer.
- Identity editing, AnyPaint and composition workflows.
- JoyCaption image-to-text.
- Krea-2 Turbo, filter-bypass, refusal-reduction and identity LoRAs.
- ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Profile | Tested GPU | Min VRAM | Pod RAM | Volume |
|---|---|---:|---:|---:|
| Krea-2 BF16 | RTX 3090/4090 PRO 6000 MiG | 24 GB | 65 GB | 60 GB |
| Krea-2 low VRAM | RTX A4500 | 20 GB | 65 GB | 50 GB |

The template selects the model through its VRAM profile: BF16 for high VRAM and INT8 ConvRot for low VRAM. Container disk requirement: **15 GB**. Actual memory use depends on resolution, workflow and offloading.

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `PASSWORD` | Optional | Protects Code Server and pod tools. If not set, a password is automatically generated and shown in the container logs. |
| `HF_TOKEN` | Gated/private or rate-limited downloads | Hugging Face authentication |
| `CIVITAI_TOKEN` | CivitAI downloads | Model and LoRA authentication |

Store tokens as RunPod secrets. Do not publish them in workflows or screenshots.

## Documentation and help

- [Image inference overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
- [RunPod configuration](https://comfyui.rozenlaan.site/RunPod_configuration/)

## Other templates

- [WAN 2.2 video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [LTX 2.3 video](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
