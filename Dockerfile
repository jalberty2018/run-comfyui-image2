# syntax=docker/dockerfile:1.7
# run-comfyui-image2
FROM ls250824/comfyui-runtime2:09092026

WORKDIR /ComfyUI

# Adding requirements internal comfyui-manager
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    matrix-nio \
    -r manager_requirements.txt

# Copy ComfyUI configurations and ini settings
COPY --chmod=644 configuration/comfy.settings.json user/default/comfy.settings.json
COPY --chmod=644 configuration/config.ini user/__manager/config.ini

# Clone
WORKDIR /ComfyUI/custom_nodes

# Build-only setting; HTTP/1.1 is a transport workaround, not an auth fix.
# Override with --build-arg GIT_HTTP_VERSION=HTTP/2 when appropriate.
ARG GIT_HTTP_VERSION=HTTP/1.1
# Separate layers retain successful clones when a later repository fails.
# Shallow full checkouts avoid the extra lazy blob fetch of --filter=blob:none.
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/liusida/ComfyUI-Login.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kianxyzw/comfyui-model-linker.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/chrisgoringe/cg-image-filter.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/KY-2000/comfyui-save-image-enhanced.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/scraed/LanPaint.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/alexopus/ComfyUI-Image-Saver.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Azornes/Comfyui-Resolution-Master.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/willmiao/ComfyUI-Lora-Manager.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/city96/ComfyUI-GGUF.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/PozzettiAndrea/ComfyUI-SAM3.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/neonr-0/ComfyUI-PixelConstrainedScaler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/1038lab/ComfyUI-RMBG.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/rgthree/rgthree-comfy.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/yolain/ComfyUI-Easy-Use.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-KJNodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/alessandrozonta/Comfyui-LoopLoader.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ClownsharkBatwing/RES4LYF.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-Scale-Image-to-Total-Pixels-Advanced.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/bradsec/ComfyUI_StringEssentials.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/numz/ComfyUI-SeedVR2_VideoUpscaler.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/lrzjason/Comfyui-QwenEditUtils.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/fpgaminer/joycaption_comfyui.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jalberty2018/comfyui-krea2-conditioning.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ethanfel/ComfyUI-Krea2TextEncoder.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/nova452/ComfyUI-Conditioning-Rebalance.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/capitan01R/ComfyUI-Krea2T-Enhancer.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kgilper/krea-reference.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jieg9341-lab/ComfyUI-Krea2-StyleTransfer.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/shootthesound/ComfyUI-KreaReason.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/lbouaraba/comfyui-krea2edit.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/blue-pen5805/ComfyUI-krea2-negpip.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BlackSnowSkill/ComfyUI-Krea2-Projector-Tuner.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Extraltodeus/ComfyUI-Krea2-attention-tweak.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/ostris/ComfyUI-Krea2-Ostris-Edit.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/alexw5702-afk/krea2-anypaint.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/iljung1106/ComfyUI-Krea2-NAG.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/obvpm/comfyui-obvpm.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Andro-Meta/ComfyUI-Krea-Moodboards.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/cyberdeliaAI/ComfyUI-CyberKrea-Sampler.git

WORKDIR /ComfyUI/custom_nodes/ComfyUI-RMBG
# Rewrite any top-level CPU ORT refs to GPU ORT
RUN set -eux; \
  for f in \
    requirements.txt; do \
      [ -f "$f" ] || continue; \
      sed -i -E 's/^( *| *)(onnxruntime)([<>=].*)?(\s*)$/\1onnxruntime-gpu==1.22.*\4/i' "$f"; \
    done

RUN set -eux; \
  grep -RniE '^[[:space:]]*onnxruntime([[:space:]]*[<>=!~].*)?[[:space:]]*$|^[[:space:]]*onnxruntime-gpu([[:space:]]*[<>=!~].*)?[[:space:]]*$' \
    /ComfyUI/custom_nodes || true

WORKDIR /ComfyUI/custom_nodes/ComfyUI-SAM3
# Working version for SAM3 (comfy-env problems)
# Commit date: 2026-03-16
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" fetch --depth=1 origin 5c0474e292e3658645f46e46378d58935a82692f && git checkout --detach 5c0474e292e3658645f46e46378d58935a82692f
# Pixi problem SAM3
RUN sed -i '/^comfy-env/d' requirements.txt
RUN sed -i '/^comfy-test/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/ComfyUI-Easy-Use
# remove onnxruntime
RUN sed -i '/^onnxruntime/d' requirements.txt

WORKDIR /
# Install Dependencies global
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
  diffusers psutil pydantic pydantic-settings

# Install Dependencies for Cloned Repositories
WORKDIR /ComfyUI/custom_nodes
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    -r ComfyUI-KJNodes/requirements.txt \
    -r RES4LYF/requirements.txt \
    -r comfyui-vrgamedevgirl/requirements.txt \
    -r ComfyUI-Lora-Manager/requirements.txt \
    -r ComfyUI-Easy-Use/requirements.txt \
    -r joycaption_comfyui/requirements.txt \
    -r ComfyUI-Login/requirements.txt \
    -r ComfyUI-GGUF/requirements.txt \
    -r ComfyUI-RMBG/requirements.txt \
    -r ComfyUI-Image-Saver/requirements.txt \
    -r ComfyUI-SeedVR2_VideoUpscaler/requirements.txt \
    -r ComfyUI-SAM3/requirements.txt \
    -r comfyui-model-linker/requirements.txt

# Add settings for lora manager 
WORKDIR /ComfyUI/custom_nodes/ComfyUI-Lora-Manager
COPY --chmod=644 /configuration/lora-manager-settings.json settings.json.template

# Set Working Directory
WORKDIR /

# Clone the documentation repo and copy the required files in one layer.
# Keeping these operations together prevents a stale clone layer from being reused
# when a documentation filename changes upstream.
RUN set -eux; \
    GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jalberty2018/comfyui-docs.git /comfyui-docs && \
    mkdir -p /docs && \
    cp /comfyui-docs/RunPod_configuration.md /docs/ComfyUI_image_configuration.md && \
    cp /comfyui-docs/ComfyUI_image2_custom_nodes.md /docs/ComfyUI_image_custom_nodes.md && \
    cp /comfyui-docs/ComfyUI_image_hardware.md /docs/ComfyUI_image_hardware.md && \
    cp /comfyui-docs/ComfyUI_image2_image_setup.md /docs/ComfyUI_image_image_setup.md && \
    cp /comfyui-docs/ComfyUI_image_resources.md /docs/ComfyUI_image_resources.md && \
    rm -rf /comfyui-docs

# Copy Scripts and documentation
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/files-on-workspace.sh onworkspace/test-on-workspace.sh onworkspace/docs-on-workspace.sh / 
COPY --chmod=664 /documentation/README.md /README.md
COPY --chmod=644 test/ /test
COPY --chmod=644 docs/ /docs

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Licenses differ by component; see THIRD_PARTY_NOTICES.md.
# Clear any inherited blanket license label for the assembled image.
# Labels
LABEL org.opencontainers.image.title="ComfyUI 0.35.0 for image inference" \
      org.opencontainers.image.description="ComfyUI + internal manager + flash-attn + sageattention + onnxruntime-gpu + torch_generic_nms + code-server + civitai downloader + huggingface_hub + custom_nodes" \
      org.opencontainers.image.source="https://hub.docker.com/r/ls250824/run-comfyui-image2" \
      org.opencontainers.image.licenses=""

# CPU-safe package verification. Docker builds have no GPU/driver, so avoid
# importing CUDA-backed modules. Runtime CUDA checks are performed by start.sh.
RUN python - <<'PY'
import importlib.metadata as metadata

packages = (
    "torch",
    "torchvision",
    "torchaudio",
    "triton",
    "onnxruntime-gpu",
)
for package in packages:
    print(f"{package}: {metadata.version(package)}")
PY

# Start Server
CMD [ "/start.sh" ]
