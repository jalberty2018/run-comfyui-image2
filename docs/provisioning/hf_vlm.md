# Manual provisioning for llama.cpp VLM and test models

- [`TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF`](https://huggingface.co/TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF)

## TinyLlama test model

```bash
hf download TheBloke/TinyLlama-1.1B-Chat-v1.0-GGUF \
  tinyllama-1.1b-chat-v1.0.Q8_0.gguf \
  --local-dir /workspace/ComfyUI/models/LLM/Qwen3.8
```

TinyLlama is intended only as a compact functional test model. Use the Qwen
model for the MiniMax H3 prompt-enhancement and multimodal test workflows.
