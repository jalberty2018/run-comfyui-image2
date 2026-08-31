# Environment variables templates

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
WORKFLOW7=https://provisioning.rozenlaan.site/image/Krea-2-turbo-i2i-ostris-edit-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image/JoyCaption-i2t-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image/Krea-2-turbo-composition.pod.json
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
