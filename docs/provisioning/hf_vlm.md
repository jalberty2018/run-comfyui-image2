# Manual provisioning for llama.cpp VLM and test models

- [`theresa00l/Qwen3.8-27B-Uncensored-FP8-Q4_K_M-GGUF`](https://huggingface.co/theresa00l/Qwen3.8-27B-Uncensored-FP8-Q4_K_M-GGUF)
- [`unsloth/Qwen3.8-27B-GGUF`](https://huggingface.co/unsloth/Qwen3.8-27B-GGUF)
- [`TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF`](https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF)

## Heretic Q8_0 GGUF prompt enhancers for qwen image 21

### Text-to-image Q8_0

```bash
hf download pottokao/Qwen-Image-2.1-PE-T2I-Heretic-GGUF pe_t2i_heretic-Q8_0.gguf \
--local-dir /workspace/ComfyUI/models/LLM/Qwen-Image-2.1-PE-T2I-Heretic-GGUF/
```

### Image-to-image Q8_0 and BF16 vision projector

```bash
hf download pottokao/Qwen-Image-2.1-PE-I2I-Heretic-GGUF pe_i2i_heretic-Q8_0.gguf pe_i2i_heretic.mmproj-bf16.gguf \
--local-dir /workspace/ComfyUI/models/LLM/Qwen-Image-2.1-PE-I2I-Heretic-GGUF/
```

## FLUX 3 Klein Heretic DHQ Q4_K_M and F16 vision projector

Source: [pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF](https://huggingface.co/pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF).

The private FLUX 3 Klein template places both files in `models/LLM/Flux-VLM-Heretic` for llama.cpp. Select the model GGUF and its matching `mmproj` file in your llama.cpp loader for image input.

### Heretic DHQ Q4_K_M

```bash
hf download pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF \
  flux3-klein-te-heretic-dhq-Q4_K_M.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Flux-VLM-Heretic
```

### F16 vision projector

```bash
hf download pottokao/FLUX.3-Klein-Text-Encoder-Heretic-DHQ-GGUF \
  mmproj-flux3-klein-te-heretic-dhq-f16.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Flux-VLM-Heretic
```

## Krea-2 Heretic 8B Q6 and official vision projector

### Heretic 8B Q6

```bash
hf download ThalisAI/Qwen3-VL-8B-Instruct-heretic \
  Qwen3-VL-8B-Instruct-heretic-Q6_K.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Krea-VLM-Heretic
```

### Official vision projector

```bash
hf download Qwen/Qwen3-VL-8B-Instruct-GGUF \
  mmproj-Qwen3VL-8B-Instruct-Q8_0.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Krea-VLM-Heretic
```

## TinyLlama test model

```bash
hf download TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF \
  tinyllama-1.1b-chat-v1.0.Q8_0.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Qwen3.8
```

TinyLlama is intended only as a compact functional test model.
