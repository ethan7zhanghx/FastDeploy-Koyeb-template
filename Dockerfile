FROM nvidia/cuda:12.6.0-base-ubuntu22.04 

RUN apt-get update -y \
    && apt-get install -y python3-pip

RUN ldconfig /usr/local/cuda-12.6/compat/

# Install Python dependencies
COPY builder/requirements.txt /requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install paddlepaddle-gpu==3.2.2 -i https://www.paddlepaddle.org.cn/packages/stable/cu126/ && \
    python3 -m pip install fastdeploy-gpu==2.3.0 -i https://www.paddlepaddle.org.cn/packages/stable/fastdeploy-gpu-80_90/  --extra-index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple


ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl tini && \
    rm -rf /var/lib/apt/lists/*

ENV MODEL=baidu/ERNIE-4.5-0.3B-Paddle \
    MAX_MODEL_LEN=32768 \
    MAX_NUM_SEQS=32 \
    PORT=8000

ENV QUANTIZATION="" \
    GPU_MEMORY_UTILIZATION=""

RUN echo '#!/bin/bash\n\
set -e\n\
\n\

PORT=${PORT:-8000}\n\
\n\
CMD="python3 -m fastdeploy.entrypoints.openai.api_server --model ${MODEL} --max-model-len ${MAX_MODEL_LEN} --max-num-seqs ${MAX_NUM_SEQS} --host 0.0.0.0 --port ${PORT}"\n\
\n\
if [ -n "${QUANTIZATION}" ]; then\n\
  CMD="${CMD} --quantization ${QUANTIZATION}"\n\
fi\n\
\n\
if [ -n "${GPU_MEMORY_UTILIZATION}" ]; then\n\
  CMD="${CMD} --gpu-memory-utilization ${GPU_MEMORY_UTILIZATION}"\n\
fi\n\
\n\
echo "Starting FastDeploy with command: ${CMD}"\n\
exec ${CMD}\n\
' > /entrypoint.sh && chmod +x /entrypoint.sh

EXPOSE ${PORT}

ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["/bin/bash", "/entrypoint.sh"]
