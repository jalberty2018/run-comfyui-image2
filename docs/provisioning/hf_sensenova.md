# Manual provisioning SenseNova U1.5

## Websites

- [Native ComfyUI implementation: PR #15922](https://github.com/Comfy-Org/ComfyUI/pull/15922)
- [Original model](https://huggingface.co/sensenova/SenseNova-U1.5-8B-MoT)
- [ComfyUI checkpoint and converted LoRA](https://huggingface.co/t8star/SenseNova-U1.5-Comfy)

## Checkpoint: Final BF16

```bash
hf download t8star/SenseNova-U1.5-Comfy SenseNova-U1.5-8B-MoT-BF16-T8.safetensors \
--local-dir /workspace/ComfyUI/models/checkpoints/
```

## Optional distilled LoRA

```bash
hf download t8star/SenseNova-U1.5-Comfy SenseNova-U1.5-8B-MoT-LoRA-8step-ComfyUI.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```
