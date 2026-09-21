# Qwen-Image 2.1 for text-to-image and image editing

Run Qwen-Image 2.1 with the existing image2 container and its environment-variable provisioning. Model files and the two official workflows download when the pod starts with the configuration below.

## Purpose-built and cost-efficient

Qwen-Image 2.1 combines generation and editing in a 7B model. It supports native 2K output, RGBA transparency and up to ten reference images. See the [ComfyUI announcement](https://blog.comfy.org/p/qwen-image-21-in-comfyui-open-weight).

## Is this the right template?

Choose this configuration to:

- generate images from text prompts;
- edit images with text instructions and reference images;
- create transparent PNG output;
- use the official INT8 ConvRot workflows or select BF16 weights.

## How Qwen-Image 2.1 is used

| Mode | Purpose | Input |
|---|---|---|
| **Text-to-image (t2i)** | Generate an image | Text prompt |
| **Image edit (i2i)** | Edit or combine reference images | Text prompt and images |

Both modes share the same diffusion model, Qwen3-VL 8B text encoder and Qwen-Image 2.1 VAE.

## Start here

1. [Deploy QWEN image 2.1](--).
2. Select a supported NVIDIA GPU and sufficient Pod RAM.
3. Use at least 60 GB volume storage for BF16 or 50 GB for the low-VRAM model.
4. Set `PASSWORD` and any required download tokens.
5. Deploy the pod and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
7. Load one of the supplied Krea-2 workflows and run a small first test.


## Included workflows and tools

- [Official text-to-image workflow](https://github.com/Comfy-Org/workflow_templates/blob/main/templates/image_qwen_image_2_1_t2i.json).
- [Official image-edit workflow](https://github.com/Comfy-Org/workflow_templates/blob/main/templates/image_qwen_image_2_1_image_edit.json).
- Diffusion model, text encoder and VAE from Comfy-Org.
- ComfyUI, Code Server, LoRA Manager and SSH from the image2 container.
- Persistent `/workspace` storage.

## Hardware and storage

| Profile | Approximate model download size |
|---|---:|
| INT8 ConvRot model + INT8 ConvRot encoder + BF16 VAE | 17.3 GB |
| BF16 model + BF16 encoder + BF16 VAE | 32.4 GB |

## Optional configuration

| Variable | When needed | Purpose |
|---|---|---|
| `PASSWORD` | Optional | Protects pod tools; otherwise the startup script generates a password and prints it in the logs. |
| `HF_TOKEN` | Authenticated downloads | Hugging Face authentication |
| `CIVITAI_TOKEN` | Additional CivitAI downloads | Not required for these model files |

The private environment example uses RunPod secret references, following the other image2 configurations.

## Documentation and help

- [Manual model provisioning](../docs/provisioning/hf_qwen_image_2_1.md)
- [Environment configurations](runpod-env-templates.md#qwen-image-21)
- [ComfyUI model repository](https://huggingface.co/Comfy-Org/Qwen-Image-2.1)
- [Image inference overview](https://comfyui.rozenlaan.site/ComfyUI_image/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)

## Other templates

- [Krea-2](README_runpod_krea2.md)
- [SenseNova U1.5](README_runpod_sensenova.md)
