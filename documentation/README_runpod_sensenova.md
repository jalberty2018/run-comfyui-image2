# SenseNova U1.5 for text-to-image and image-to-image

Generate and edit images with SenseNova U1.5 in ComfyUI. The BF16 checkpoint, optional 8-step LoRA and ready-to-use workflows are provisioned automatically.

## Purpose-built and cost-efficient

This template provisions the SenseNova U1.5 models and tools required for text-to-image and image-to-image workflows. Use the Final BF16 checkpoint for standard inference or enable the optional distilled 8-step LoRA in a compatible workflow.

## Is this the right template?

Choose this template to:

- generate images from text prompts with SenseNova U1.5;
- edit existing images with image-to-image workflows;
- use the Final BF16 checkpoint with an optional 8-step LoRA;
- run tested workflows on an RTX 6000 Ada or L40S.

## How SenseNova U1.5 is used

| Mode | What SenseNova U1.5 does | Input |
|---|---|---|
| **Text-to-image (t2i)** | Generates an image from your prompt | Text prompt |
| **Image-to-image (i2i)** | Edits an existing image using your instructions | Image and text prompt |

Both modes use the `SenseNova-U1.5-8B-MoT-BF16-T8.safetensors` checkpoint. The optional distilled LoRA is `SenseNova-U1.5-8B-MoT-LoRA-8step-ComfyUI.safetensors`.

## Start here

1. [Deploy the SenseNova U1.5 template](https://console.runpod.io/hub/template/5o6lkmpk4p?ref=se4tkc5o).
2. Select an RTX 6000 Ada or L40S and allow for 50 GB of Pod RAM use.
3. Configure an 80 GB container volume to match the tested setup.
4. Deploy the pod and follow the container logs.
5. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
6. Load a supplied SenseNova U1.5 t2i or i2i workflow and run a small first test.

## Included workflows and tools

- Text-to-image generation.
- Image-to-image editing.
- SenseNova U1.5 Final BF16 checkpoint.
- Optional distilled 8-step LoRA.
- ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Profile | Tested GPU | Tested workflows | RAM use | Container volume |
|---|---|---|---:|---:|
| SenseNova U1.5 BF16 | RTX 6000 Ada | t2i and i2i | 50 GB | 80 GB |
| SenseNova U1.5 BF16 | L40S | t2i and i2i | 50 GB | 80 GB |

These are tested configurations. Actual memory use depends on resolution, workflow and offloading. Allow additional RAM headroom for larger workloads.

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
