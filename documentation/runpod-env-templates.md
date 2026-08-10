# Environment variables templates

## Mage Flow (raw + edit)

### Public BF16 + INT8 ConvRot

```bash
VRAM_THRESHOLD=21
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Mage-Flow
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/mage_flow_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Mage-Flow
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/mage_flow_int8_convrot.safetensors
HF_MODEL_HVRAM_DIFFUSION_MODELS2=Comfy-Org/Mage-Flow
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME2=diffusion_models/mage_flow_edit_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS2=Comfy-Org/Mage-Flow
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME2=diffusion_models/mage_flow_edit_int8_convrot.safetensors
HF_MODEL_TEXT_ENCODERS1=wangkanai/qwen3-vl-4b-instruct
HF_MODEL_TEXT_ENCODERS_FILENAME1=qwen3-vl-4b-instruct-abliterated.safetensors
HF_MODEL_VAE1=Comfy-Org/Mage-Flow
HF_MODEL_VAE_FILENAME1=vae/mage_flow_vae_bf16.safetensors
```

## Krea-2

### Public Raw + turbo-lora

```bash
VRAM_THRESHOLD=21
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Krea-2
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/krea2_raw_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Krea-2
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/krea2_raw_int8_convrot.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=wangkanai/qwen3-vl-4b-instruct
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=qwen3-vl-4b-instruct-abliterated.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=ahmed22xa/Huihui-Qwen3-VL-4B-Instruct-abliterated-comfy
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=Huihui-Qwen3-VL-4B-Instruct-abliterated-fp8_scaled.safetensors
HF_MODEL_VAE1=Comfy-Org/Krea-2
HF_MODEL_VAE_FILENAME1=vae/qwen_image_vae.safetensors
HF_MODEL_VAE2=LS110824/vae
HF_MODEL_VAE_FILENAME2=krea2RealVae_v10.safetensors
HF_MODEL_LORA1=Comfy-Org/Krea-2
HF_MODEL_LORA_FILENAME1=loras/krea2_turbo_lora_rank_64_bf16.safetensors
HF_MODEL_LORA2=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME2=krea2filterbypass.safetensors
HF_MODEL_LORA3=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME3=krea2filterbypass3.safetensors
HF_MODEL_LORA4=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME4=fedor_bypass.safetensors
HF_MODEL_LORA5=conradlocke/krea2-identity-edit
HF_MODEL_LORA_FILENAME5=krea2_identity_edit_v1_2_r128.safetensors
HF_MODEL_LORA6=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME6=Krea2_TextFusion_Refusal_Reduction.safetensors
HF_MODEL_LORA7=yijunwang2/krea2-anypaint
HF_MODEL_LORA_FILENAME7=krea2_anypaint_rank32.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-prompt-enhance-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-vlm-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-vlm-2-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-vlm-artist-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-style-transfer-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-edit-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image/Krea2_turbo_identity-edit_pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-ostris-edit-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
WORKFLOW10=https://provisioning.rozenlaan.site/image/Krea-2-turbo-composition.pod.json
```

### Private Raw + turbo-lora + bf16

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Krea-2
HF_MODEL_DIFFUSION_MODELS_FILENAME1=diffusion_models/krea2_raw_bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=wangkanai/qwen3-vl-4b-instruct
HF_MODEL_TEXT_ENCODERS_FILENAME1=qwen3-vl-4b-instruct-abliterated.safetensors
HF_MODEL_VAE1=LS110824/vae
HF_MODEL_VAE_FILENAME1=krea2RealVae_v10.safetensors
HF_MODEL_LORA1=Comfy-Org/Krea-2
HF_MODEL_LORA_FILENAME1=loras/krea2_turbo_lora_rank_64_bf16.safetensors
HF_MODEL_LORA2=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME2=krea2filterbypass.safetensors
HF_MODEL_LORA3=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME3=krea2filterbypass3.safetensors
HF_MODEL_LORA4=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME4=fedor_bypass.safetensors
HF_MODEL_LORA5=conradlocke/krea2-identity-edit
HF_MODEL_LORA_FILENAME5=krea2_identity_edit_v1_2_r128.safetensors
HF_MODEL_LORA6=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME6=Krea2_TextFusion_Refusal_Reduction.safetensors
HF_MODEL_LORA7=yijunwang2/krea2-anypaint
HF_MODEL_LORA_FILENAME7=krea2_anypaint_rank32.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-prompt-enhance-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-vlm-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-vlm-2-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/Krea-2-turbo-t2i-vlm-artist-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-style-transfer-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-edit-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image/Krea2_turbo_identity-edit_pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-ostris-edit-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
WORKFLOW10=https://provisioning.rozenlaan.site/image/Krea-2-turbo-composition.pod.json
```

## ZIB-ZIT

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/z_image_turbo
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/z_image_turbo_bf16.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/z_image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=split_files/diffusion_models/z_image_bf16.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_VAE2=easygoing0114/Z-Image_clear_vae
HF_MODEL_VAE_FILENAME2=Z-Image_natural_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=chinmankokumin/Qwen3-4B-abliterated-v2
HF_MODEL_TEXT_ENCODERS_FILENAME1=qwen_3_4b_abliterated_v2.safetensors
HF_MODEL_PATCHES1=alibaba-pai/Z-Image-Turbo-Fun-Controlnet-Union-2.1
HF_MODEL_PATCHES_FILENAME1=Z-Image-Turbo-Fun-Controlnet-Union-2.1-2602-8steps.safetensors
HF_MODEL_PATCHES2=alibaba-pai/Z-Image-Fun-Controlnet-Union-2.1
HF_MODEL_PATCHES_FILENAME2=Z-Image-Fun-Controlnet-Union-2.1.safetensors
HF_MODEL_LORA1=Comfy-Org/z_image_turbo
HF_MODEL_LORA_FILENAME1=split_files/loras/z_image_turbo_distill_patch_lora_bf16.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
WORKFLOW1=https://provisioning.rozenlaan.site/image/ZIB-t2i-clownshark-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ZIB-t2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/ZIB-ZIT-ZIT-t2i-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/ZIB-ZIT-ZIT-t2i-ClownShark-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/ZIT-i2i-controlnet-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/ZIT-t2i-ZSamplerTurbo-pod.json
```

### Private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/z_image_turbo
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/z_image_turbo_bf16.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/z_image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=split_files/diffusion_models/z_image_bf16.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=chinmankokumin/Qwen3-4B-abliterated-v2
HF_MODEL_TEXT_ENCODERS_FILENAME1=qwen_3_4b_abliterated_v2.safetensors
HF_MODEL_PATCHES1=alibaba-pai/Z-Image-Turbo-Fun-Controlnet-Union-2.1
HF_MODEL_PATCHES_FILENAME1=Z-Image-Turbo-Fun-Controlnet-Union-2.1-2602-8steps.safetensors
HF_MODEL_PATCHES2=alibaba-pai/Z-Image-Fun-Controlnet-Union-2.1
HF_MODEL_PATCHES_FILENAME2=Z-Image-Fun-Controlnet-Union-2.1.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/ZIB-t2i-clownshark-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ZIB-t2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/ZIB-ZIT-ZIT-t2i-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/ZIB-ZIT-ZIT-t2i-ClownShark-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/ZIT-i2i-controlnet-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/ZIT-t2i-ZSamplerTurbo-pod.json
```

## Z-Image Base

### Public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/z_image
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/z_image_bf16.safetensors
HF_MODEL_VAE1=wangkanai/flux-dev-fp16
HF_MODEL_VAE_FILENAME1=vae/flux/flux-vae-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=chinmankokumin/Qwen3-4B-abliterated-v2
HF_MODEL_TEXT_ENCODERS_FILENAME1=qwen_3_4b_abliterated_v2.safetensors
HF_MODEL_PATCHES1=alibaba-pai/Z-Image-Fun-Controlnet-Union-2.1
HF_MODEL_PATCHES_FILENAME1=Z-Image-Fun-Controlnet-Union-2.1.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/ZIB-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ZIB-t2i-clownshark-pod.json
```

## Flux.2 dev

### Public

```bash
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/flux2-dev
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/flux2_dev_fp8mixed.safetensors
HF_MODEL_HVRAM_DIFFUSION_MODELS1=black-forest-labs/FLUX.2-dev
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=flux2-dev.safetensors
HF_MODEL_VAE1=Comfy-Org/flux2-dev
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/flux2-dev
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/mistral_3_small_flux2_fp8.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lovis93/Flux-2-Multi-Angles-LoRA-v2
HF_MODEL_LORA_FILENAME1=flux-multi-angles-v2-72poses-comfy.safetensors
HF_MODEL_LORA2=fal/FLUX.2-dev-Turbo
HF_MODEL_LORA_FILENAME2=flux.2-turbo-lora.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/FLUX2-ti2i-pod-HVRAM.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/FLUX2-i2i-CAMERA-pod-HVRAM.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/FLUX2-ti2i-pod-LVRAM.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/FLUX2-i2i-CAMERA-pod-LVRAM.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
```

### Private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/flux2-dev
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/flux2_dev_fp8mixed.safetensors
HF_MODEL_HVRAM_DIFFUSION_MODELS1=black-forest-labs/FLUX.2-dev
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=flux2-dev.safetensors
HF_MODEL_VAE1=Comfy-Org/flux2-dev
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/flux2-dev
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/mistral_3_small_flux2_fp8.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lovis93/Flux-2-Multi-Angles-LoRA-v2
HF_MODEL_LORA_FILENAME1=flux-multi-angles-v2-72poses-comfy.safetensors
HF_MODEL_LORA2=fal/FLUX.2-dev-Turbo
HF_MODEL_LORA_FILENAME2=flux.2-turbo-lora.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/FLUX2-ti2i-pod-HVRAM.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/FLUX2-i2i-CAMERA-pod-HVRAM.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/FLUX2-ti2i-pod-LVRAM.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/FLUX2-i2i-CAMERA-pod-LVRAM.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
```

## Flux.2 Klein

### Public 9B

```bash
HF_DOWNLOAD_TIMEOUT=5m
HF_TOKEN=place-hugginface-token-secret-here
HF_MODEL_DIFFUSION_MODELS1=LS110824/Flux2
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux-2-klein.safetensors
HF_MODEL_DIFFUSION_MODELS2=black-forest-labs/FLUX.2-klein-base-9B
HF_MODEL_DIFFUSION_MODELS_FILENAME2=flux-2-klein-base-9b.safetensors
HF_MODEL_VAE1=Comfy-Org/vae-text-encorder-for-flux-klein-9b
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=flux2-klein-9b-uncensored-text-encoder.safetensors
HF_MODEL_LORA1=thedeoxen/refcontrol-FLUX.2-klein-9B-reference-pose-lora
HF_MODEL_LORA_FILENAME1=refcontrol_v2_poses.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-i2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-mi2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-i2i-control-target-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Base-t2i-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-RefControl-i2i-pod.json
```

### private 9B Distill

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_DOWNLOAD_TIMEOUT=5m
HF_MODEL_DIFFUSION_MODELS1=LS110824/Flux2
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux-2-klein.safetensors
HF_MODEL_VAE1=Comfy-Org/vae-text-encorder-for-flux-klein-9b
HF_MODEL_VAE_FILENAME1=split_files/vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=flux2-klein-9b-uncensored-text-encoder.safetensors
HF_MODEL_LORA1=thedeoxen/refcontrol-FLUX.2-klein-9B-reference-pose-lora
HF_MODEL_LORA_FILENAME1=refcontrol_v2_poses.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-i2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-mi2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-i2i-control-target-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image/FLUX-Klein-9B-Distilled-RefControl-i2i-pod.json
```

## Qwen-image-edit

### 2511

#### public

```bash
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_fp8mixed.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/HunyuanVideo_1.5_repackaged
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_HVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_HVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-fp32.safetensors
HF_MODEL_LVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors
HF_MODEL_LVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-bf16.safetensors
HF_MODEL_LORA1=fal/Qwen-Image-Edit-2511-Multiple-Angles-LoRA
HF_MODEL_LORA_FILENAME1=qwen-image-edit-2511-multiple-angles-lora.safetensors
HF_MODEL_LORA2=lovis93/next-scene-qwen-image-lora-2509
HF_MODEL_LORA_FILENAME2=next-scene_lora-v2-3000.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod-hvram.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod-lvram.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-edit-loop-pod-hvram.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-edit-loop-pod-lvram.json
WORKFLOW_HVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-edit-multiangle-pod-hvram.json
WORKFLOW_LVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-edit-multiangle-pod-lvram.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
```

#### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Edit_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_edit_2511_fp8mixed.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/HunyuanVideo_1.5_repackaged
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_HVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_HVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_HVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-fp32.safetensors
HF_MODEL_LVRAM_LORA1=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME1=Qwen-Image-Edit-2511-Lightning-4steps-V1.0-bf16.safetensors
HF_MODEL_LVRAM_LORA2=lightx2v/Qwen-Image-Edit-2511-Lightning
HF_MODEL_LVRAM_LORA_FILENAME2=Qwen-Image-Edit-2511-Lightning-8steps-V1.0-bf16.safetensors
HF_MODEL_LORA1=fal/Qwen-Image-Edit-2511-Multiple-Angles-LoRA
HF_MODEL_LORA_FILENAME1=qwen-image-edit-2511-multiple-angles-lora.safetensors
HF_MODEL_LORA2=lovis93/next-scene-qwen-image-lora-2509
HF_MODEL_LORA_FILENAME2=next-scene_lora-v2-3000.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod-hvram.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-edit-pod-lvram.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-edit-loop-pod-hvram.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-edit-loop-pod-lvram.json
WORKFLOW_HVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-edit-multiangle-pod-hvram.json
WORKFLOW_LVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-edit-multiangle-pod-lvram.json
WORKFLOW4=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
```

## Qwen-image-layered

### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-Layered_ComfyUI
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_layered_bf16.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image-Layered_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_layered_vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/HunyuanVideo_1.5_repackaged
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
```

## JoyAI-Image-Edit

### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=jdopensource/JoyAI-Image-Edit-ComfyUI
HF_MODEL_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/joyai_image_edit_bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=jdopensource/JoyAI-Image-Edit-ComfyUI
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_3vl_8b_joyimage_bf16.safetensors
HF_MODEL_VAE1=jdopensource/JoyAI-Image-Edit-ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/wan_2.1_vae.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/JoyAI-Image-Edit-i2i-single-pod.json
```

## Qwen-image

### 2512

#### public

```bash
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_fp8_e4m3fn.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME1=Qwen-Image-Lightning-4steps-V1.0.safetensors
HF_MODEL_LORA2=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME2=Qwen-Image-Lightning-4steps-V2.0.safetensors
HF_MODEL_LORA3=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME3=Qwen-Image-Lightning-8steps-V2.0.safetensors
HF_MODEL_LVRAM_LORA4=lightx2v/Qwen-Image-Lightning
HF_MODEL_LVRAM_LORA_FILENAME4=Qwen-Image-fp8-e4m3fn-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_CONTROLNET1=alibaba-pai/Qwen-Image-2512-Fun-Controlnet-Union
HF_MODEL_CONTROLNET_FILENAME1=Qwen-Image-2512-Fun-Controlnet-Union-2602.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod-lvram.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod-lvram.json
WORKFLOW_LVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-2512-i2i-controlnet-pod-lvram.json
```
#### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=split_files/diffusion_models/qwen_image_2512_fp8_e4m3fn.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_VAE_FILENAME1=split_files/vae/qwen_image_vae.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image_ComfyUI
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_LORA1=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME1=Qwen-Image-Lightning-4steps-V1.0.safetensors
HF_MODEL_LORA2=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME2=Qwen-Image-Lightning-4steps-V2.0.safetensors
HF_MODEL_LORA3=lightx2v/Qwen-Image-Lightning
HF_MODEL_LORA_FILENAME3=Qwen-Image-Lightning-8steps-V2.0.safetensors
HF_MODEL_LVRAM_LORA4=lightx2v/Qwen-Image-Lightning
HF_MODEL_LVRAM_LORA_FILENAME4=Qwen-Image-fp8-e4m3fn-Lightning-4steps-V1.0-fp32.safetensors
HF_MODEL_CONTROLNET1=alibaba-pai/Qwen-Image-2512-Fun-Controlnet-Union
HF_MODEL_CONTROLNET_FILENAME1=Qwen-Image-2512-Fun-Controlnet-Union-2602.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod.json
WORKFLOW_HVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-res2s-pod-lvram.json
WORKFLOW_LVRAM2=https://provisioning.rozenlaan.site/image/QWEN-image-2512-t2i-adv-pod-lvram.json
WORKFLOW_LVRAM3=https://provisioning.rozenlaan.site/image/QWEN-image-2512-i2i-controlnet-pod-lvram.json
```

## Baidu 

### ERNIE-Image

#### public

```bash
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/ERNIE-Image
HF_MODEL_DIFFUSION_MODELS_FILENAME1=diffusion_models/ernie-image-turbo.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/ERNIE-Image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=diffusion_models/ernie-image.safetensors
HF_MODEL_VAE1=Comfy-Org/ERNIE-Image
HF_MODEL_VAE_FILENAME1=vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/ERNIE-Image
HF_MODEL_TEXT_ENCODERS_FILENAME1=text_encoders/ministral-3-3b.safetensors
HF_MODEL_TEXT_ENCODERS2=Comfy-Org/ERNIE-Image
HF_MODEL_TEXT_ENCODERS_FILENAME2=text_encoders/ernie-image-prompt-enhancer.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/ERNIE-Image-Turbo-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ERNIE-Image-t2i-pod.json
```

#### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/ERNIE-Image
HF_MODEL_DIFFUSION_MODELS_FILENAME1=diffusion_models/ernie-image-turbo.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/ERNIE-Image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=diffusion_models/ernie-image.safetensors
HF_MODEL_VAE1=Comfy-Org/ERNIE-Image
HF_MODEL_VAE_FILENAME1=vae/flux2-vae.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/ERNIE-Image
HF_MODEL_TEXT_ENCODERS_FILENAME1=text_encoders/ministral-3-3b.safetensors
HF_MODEL_TEXT_ENCODERS2=Comfy-Org/ERNIE-Image
HF_MODEL_TEXT_ENCODERS_FILENAME2=text_encoders/ernie-image-prompt-enhancer.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image/ERNIE-Image-Turbo-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image/ERNIE-Image-t2i-pod.json
```

## Flux.1 dev Kontext

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_DIFFUSION_MODELS1=black-forest-labs/FLUX.1-Kontext-dev
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux1-kontext-dev.safetensors
HF_MODEL_VAE1=black-forest-labs/FLUX.1-Kontext-dev
HF_MODEL_VAE_FILENAME1=ae.safetensors
HF_MODEL_TEXT_ENCODERS1=comfyanonymous/flux_text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=t5xxl_fp16.safetensors
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_TEXT_ENCODERS2=zer0int/CLIP-GmP-ViT-L-14
HF_MODEL_TEXT_ENCODERS_FILENAME2=ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors
```

## Flux.1 dev SRPO

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_UPSCALER1=LS110824/upscale
HF_MODEL_UPSCALER_PTH1=4x_foolhardy_Remacri.pth
HF_MODEL_DIFFUSION_MODELS1=rockerBOO/flux.1-dev-SRPO
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux.1-dev-SRPO-bf16.safetensors
HF_MODEL_TEXT_ENCODERS1=comfyanonymous/flux_text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=t5xxl_fp16.safetensors
HF_MODEL_TEXT_ENCODERS2=zer0int/CLIP-GmP-ViT-L-14
HF_MODEL_TEXT_ENCODERS_FILENAME2=ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors
HF_MODEL_VAE1=black-forest-labs/FLUX.1-Kontext-dev
HF_MODEL_VAE_FILENAME1=ae.safetensors
```
