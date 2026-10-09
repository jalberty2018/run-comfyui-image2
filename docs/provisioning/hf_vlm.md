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

## Qwen VLM language model

### Model

```bash
hf download theresa00l/Qwen3.8-27B-Uncensored-FP8-Q4_K_M-GGUF \
  qwen3.8-27b-uncensored-fp8-q4_k_m.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Qwen3.8
```

### Matching MMProj

The F16 projector comes from the matching base-model repository:

```bash
hf download unsloth/Qwen3.8-27B-GGUF \
  mmproj-F16.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Qwen3.8
```

## TinyLlama test model

```bash
hf download TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF \
  tinyllama-1.1b-chat-v1.0.Q8_0.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Qwen3.8
```

TinyLlama is intended only as a compact functional test model.
