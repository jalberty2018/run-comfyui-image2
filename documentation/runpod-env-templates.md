# Environment variables templates

## FLUX 3 Image Klein

### Private Base + Distilled INT8 ConvRot

```bash
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_MODEL_FILE1=pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF
HF_MODEL_FILE_FILENAME1=flux3-klein-te-heretic-dhq-Q4_K_M.gguf
HF_MODEL_FILE_DIR1=models/LLM/Flux-VLM-Heretic
HF_MODEL_FILE2=pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF
HF_MODEL_FILE_FILENAME2=mmproj-flux3-klein-te-heretic-dhq-f16.gguf
HF_MODEL_FILE_DIR2=models/LLM/Flux-VLM-Heretic
HF_MODEL_DIFFUSION_MODELS1=LS110824/Flux3
HF_MODEL_DIFFUSION_MODELS_FILENAME1=flux3-image-klein-int8-convrot.safetensors
HF_MODEL_TEXT_ENCODERS1=LS110824/text_encoders
HF_MODEL_TEXT_ENCODERS_FILENAME1=flux3-klein-te-heretic-int8-convrot.safetensors
HF_MODEL_VAE1=LS110824/vae
HF_MODEL_VAE_FILENAME1=flux2-vae.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image2/Flux-3-klein-i2i-bbox-prompt-upscaler-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/Flux-3-klein-i2i-prompt-upscaler-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image2/Flux-3-klein-t2i-prompt-upscaler-pod.json
```

## MOSS-Image

### Private SFT + Base INT8 ConvRot

```bash
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_MODEL_DIFFUSION_MODELS1=Comfy-Org/MOSS-Image
HF_MODEL_DIFFUSION_MODELS_FILENAME1=diffusion_models/moss_image_sft_int8_convrot.safetensors
HF_MODEL_DIFFUSION_MODELS2=Comfy-Org/MOSS-Image
HF_MODEL_DIFFUSION_MODELS_FILENAME2=diffusion_models/moss_image_base_int8_convrot.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/MOSS-Image
HF_MODEL_TEXT_ENCODERS_FILENAME1=text_encoders/qwen3.5_9b_int8_convrot.safetensors
HF_MODEL_TEXT_ENCODERS2=DrHippie/qwen3.5-9b_abliterated_0x100refusal_vision_int8_convrot
HF_MODEL_TEXT_ENCODERS_FILENAME2=qwen3.5-9b_abliterated_0x100refusal_vision_int8_convrot.safetensors
HF_MODEL_VAE1=Comfy-Org/MOSS-Image
HF_MODEL_VAE_FILENAME1=vae/flux2-vae.safetensors
WORKFLOW1=https://raw.githubusercontent.com/Comfy-Org/workflow_templates/main/templates/image_moss_image_t2i.json
WORKFLOW2=https://raw.githubusercontent.com/Comfy-Org/workflow_templates/main/templates/image_moss_image_base_t2i.json
WORKFLOW3=https://raw.githubusercontent.com/Comfy-Org/workflow_templates/main/templates/image_moss_image_t2i_bboxes.json
WORKFLOW4=https://raw.githubusercontent.com/Comfy-Org/workflow_templates/main/templates/image_moss_image_base_t2i_bboxes.json
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
HF_MODEL_LORA_FILENAME5=krea2_general_edit_v2_r128.safetensors
HF_MODEL_LORA6=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME6=Krea2_TextFusion_Refusal_Reduction.safetensors
HF_MODEL_LORA7=yijunwang2/krea2-anypaint
HF_MODEL_LORA_FILENAME7=krea2_anypaint_rank32.safetensors
HF_MODEL_LORA8=thedeoxen/Krea-2-pose-controlnet
HF_MODEL_LORA_FILENAME8=krea2_turbo_openpose_controlnet.safetensors
HF_MODEL_LORA9=conradlocke/krea2-identity-edit
HF_MODEL_LORA_FILENAME9=krea2_identity_edit_v2_r128.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-vlm-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-vlm-2-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-style-transfer-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-ostris-edit-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image2/JoyCaption-i2t-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-prompt-enhance-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-prompt-enhance-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-ostris-controlnet-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-1-reference-edit-pod.json
WORKFLOW10=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-2-reference-edit-pod.json
WORKFLOW11=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-references-pod.json
```

### Private Raw + turbo-lora + bf16

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_FILE1=ThalisAI/Qwen3-VL-8B-Instruct-heretic
HF_MODEL_FILE_FILENAME1=Qwen3-VL-8B-Instruct-heretic-Q6_K.gguf
HF_MODEL_FILE_DIR1=models/LLM/Krea-VLM-Heretic
HF_MODEL_FILE2=Qwen/Qwen3-VL-8B-Instruct-GGUF
HF_MODEL_FILE_FILENAME2=mmproj-Qwen3VL-8B-Instruct-Q8_0.gguf
HF_MODEL_FILE_DIR2=models/LLM/Krea-VLM-Heretic
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
HF_MODEL_LORA_FILENAME5=krea2_general_edit_v2_r128.safetensors
HF_MODEL_LORA6=LS110824/krea2_lora
HF_MODEL_LORA_FILENAME6=Krea2_TextFusion_Refusal_Reduction.safetensors
HF_MODEL_LORA7=yijunwang2/krea2-anypaint
HF_MODEL_LORA_FILENAME7=krea2_anypaint_rank32.safetensors
HF_MODEL_LORA8=thedeoxen/Krea-2-pose-controlnet
HF_MODEL_LORA_FILENAME8=krea2_turbo_openpose_controlnet.safetensors
HF_MODEL_LORA9=conradlocke/krea2-identity-edit
HF_MODEL_LORA_FILENAME9=krea2_identity_edit_v2_r128.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-vlm-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-vlm-2-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-style-transfer-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-ostris-edit-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image2/JoyCaption-i2t-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-prompt-enhance-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-prompt-enhance-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-t2i-ostris-controlnet-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-1-reference-edit-pod.json
WORKFLOW10=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-i2i-2-reference-edit-pod.json
WORKFLOW11=https://provisioning.rozenlaan.site/image2/Krea-2-turbo-references-pod.json
```

## SenseNova U1.5

### Public Final BF16 + optional 8-step LoRA

```bash
HF_MODEL_CHECKPOINTS1=t8star/SenseNova-U1.5-Comfy
HF_MODEL_CHECKPOINTS_FILENAME1=SenseNova-U1.5-8B-MoT-BF16-T8.safetensors
HF_MODEL_LORA1=t8star/SenseNova-U1.5-Comfy
HF_MODEL_LORA_FILENAME1=SenseNova-U1.5-8B-MoT-LoRA-8step-ComfyUI.safetensors
WORKFLOW1=https://raw.githubusercontent.com/T8mars/Comfyui-SenseNova-U1.5-Wrapper-T8/main/examples/core_t2i_workflow.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/sensenova-i2v-pod.json
```

### Private Final BF16 + optional 8-step LoRA

```bash
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_MODEL_CHECKPOINTS1=t8star/SenseNova-U1.5-Comfy
HF_MODEL_CHECKPOINTS_FILENAME1=SenseNova-U1.5-8B-MoT-BF16-T8.safetensors
HF_MODEL_LORA1=t8star/SenseNova-U1.5-Comfy
HF_MODEL_LORA_FILENAME1=SenseNova-U1.5-8B-MoT-LoRA-8step-ComfyUI.safetensors
WORKFLOW1=https://raw.githubusercontent.com/T8mars/Comfyui-SenseNova-U1.5-Wrapper-T8/main/examples/core_t2i_workflow.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/sensenova-i2v-pod.json
```

## Qwen-Image 2.1

### Public BF16 / INT8 ConvRot + Heretic INT8 ConvRot

```bash
VRAM_THRESHOLD=40
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/qwen_image_2.1_bf16.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=text_encoders/qwen3vl_8b_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/qwen_image_2.1_int8_convrot.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=qwen3vl_8b_int8_convrot_heretic.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS2=pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME2=qwen3vl_8b_int8_convrot_heretic.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_VAE_FILENAME1=vae/qwen_image_2.1_vae_bf16.safetensors
HF_MODEL_LORA1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_LORA_FILENAME1=loras/qwen_image_2.1_turbo_lora_avg_rank_178_bf16.safetensors
HF_MODEL_PATCHES1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_PATCHES_FILENAME1=model_patches/qwen_image_2.1_fun_controlnet_union_int8_convrot.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-multiple-angle-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-t2i-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-i2i-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-controlnet-pod.json
```

### Public BF16 / INT8 ConvRot + Heretic INT8 ConvRot + prompt enhancer

```bash
VRAM_THRESHOLD=40
HF_MODEL_FILE1=pottokao/Qwen-Image-2.1-PE-T2I-Heretic-GGUF
HF_MODEL_FILE_FILENAME1=pe_t2i_heretic-Q8_0.gguf
HF_MODEL_FILE_DIR1=models/LLM/Qwen-Image-2.1-PE-T2I-Heretic-GGUF
HF_MODEL_FILE2=pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_FILE_FILENAME2=pe_i2i_heretic-Q8_0.gguf
HF_MODEL_FILE_DIR2=models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_FILE3=pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_FILE_FILENAME3=pe_i2i_heretic.mmproj-bf16.gguf
HF_MODEL_FILE_DIR3=models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/qwen_image_2.1_bf16.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=text_encoders/qwen3vl_8b_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/qwen_image_2.1_int8_convrot.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=qwen3vl_8b_int8_convrot_heretic.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS2=pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME2=qwen3vl_8b_int8_convrot_heretic.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_VAE_FILENAME1=vae/qwen_image_2.1_vae_bf16.safetensors
HF_MODEL_LORA1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_LORA_FILENAME1=loras/qwen_image_2.1_turbo_lora_avg_rank_178_bf16.safetensors
HF_MODEL_PATCHES1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_PATCHES_FILENAME1=model_patches/qwen_image_2.1_fun_controlnet_union_int8_convrot.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-t2i-prompt-enhancer-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-prompt-enhancer-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-multiple-angle-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-t2i-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-i2i-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-t2i-prompt-enhancer-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-i2i-prompt-enhancer-pod.json
WORKFLOW10=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-controlnet-pod.json
```

### Private

```bash
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
VRAM_THRESHOLD=40
HF_MODEL_FILE1=pottokao/Qwen-Image-2.1-PE-T2I-Heretic-GGUF
HF_MODEL_FILE_FILENAME1=pe_t2i_heretic-Q8_0.gguf
HF_MODEL_FILE_DIR1=models/LLM/Qwen-Image-2.1-PE-T2I-Heretic-GGUF
HF_MODEL_FILE2=pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_FILE_FILENAME2=pe_i2i_heretic-Q8_0.gguf
HF_MODEL_FILE_DIR2=models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_FILE3=pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_FILE_FILENAME3=pe_i2i_heretic.mmproj-bf16.gguf
HF_MODEL_FILE_DIR3=models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/qwen_image_2.1_bf16.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=text_encoders/qwen3vl_8b_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/qwen_image_2.1_int8_convrot.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=qwen3vl_8b_int8_convrot_heretic.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS2=pottokao/Qwen-Image-2.1-Text-Encoder-Heretic-int8-convrot
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME2=qwen3vl_8b_int8_convrot_heretic.safetensors
HF_MODEL_VAE1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_VAE_FILENAME1=vae/qwen_image_2.1_vae_bf16.safetensors
HF_MODEL_LORA1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_LORA_FILENAME1=loras/qwen_image_2.1_turbo_lora_avg_rank_178_bf16.safetensors
HF_MODEL_PATCHES1=Comfy-Org/Qwen-Image-2.1
HF_MODEL_PATCHES_FILENAME1=model_patches/qwen_image_2.1_fun_controlnet_union_int8_convrot.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-t2i-pod.json
WORKFLOW2=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-pod.json
WORKFLOW3=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-t2i-prompt-enhancer-pod.json
WORKFLOW4=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-prompt-enhancer-pod.json
WORKFLOW5=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-multiple-angle-pod.json
WORKFLOW6=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-t2i-pod.json
WORKFLOW7=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-i2i-pod.json
WORKFLOW8=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-t2i-prompt-enhancer-pod.json
WORKFLOW9=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-turbo-i2i-prompt-enhancer-pod.json
WORKFLOW10=https://provisioning.rozenlaan.site/image2/QWEN-Image-21-i2i-controlnet-pod.json
```
