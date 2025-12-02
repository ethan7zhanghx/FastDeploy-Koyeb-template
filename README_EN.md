<p align="center">
  <a href="https://github.com/PaddlePaddle/FastDeploy/releases"><img src="https://github.com/user-attachments/assets/42b0039f-39e3-4279-afda-6d1865dfbffb" width="500"></a>
</p>
<p align="center">
    <a href=""><img src="https://img.shields.io/badge/python-3.10-aff.svg"></a>
    <a href=""><img src="https://img.shields.io/badge/os-linux-pink.svg"></a>
    <a href="https://github.com/PaddlePaddle/FastDeploy/graphs/contributors"><img src="https://img.shields.io/github/contributors/PaddlePaddle/FastDeploy?color=9ea"></a>
    <a href="https://github.com/PaddlePaddle/FastDeploy/commits"><img src="https://img.shields.io/github/commit-activity/m/PaddlePaddle/FastDeploy?color=3af"></a>
    <a href="https://github.com/PaddlePaddle/FastDeploy/issues"><img src="https://img.shields.io/github/issues/PaddlePaddle/FastDeploy?color=9cc"></a>
    <a href="https://github.com/PaddlePaddle/FastDeploy/stargazers"><img src="https://img.shields.io/github/stars/PaddlePaddle/FastDeploy?color=ccf"></a>

</p>

<p align="center">
     <a href="https://trendshift.io/repositories/4046" target="_blank"><img src="https://trendshift.io/api/badge/repositories/4046" alt="PaddlePaddle%2FFastDeploy | Trendshift" style="width: 250px; height: 55px;" width="250" height="55"/></a></br>
    <a href="https://paddlepaddle.github.io/FastDeploy/get_started/installation/nvidia_gpu/"><b> Installation </b></a>
    |
    <a href="https://paddlepaddle.github.io/FastDeploy/get_started/quick_start"><b> Quick Start </b></a>
    |
    <a href="https://paddlepaddle.github.io/FastDeploy/supported_models/"><b> Supported Models </b></a>

</p>

--------------------------------------------------------------------------------
# FastDeploy : Inference and Deployment Toolkit for LLMs and VLMs based on PaddlePaddle

## About

**FastDeploy** is an inference and deployment toolkit for large language models and visual language models based on PaddlePaddle. It delivers **production-ready, out-of-the-box deployment solutions** with core acceleration technologies:

- 🚀 **Load-Balanced PD Disaggregation**: Industrial-grade solution featuring context caching and dynamic instance role switching. Optimizes resource utilization while balancing SLO compliance and throughput.
- 🔄 **Unified KV Cache Transmission**: Lightweight high-performance transport library with intelligent NVLink/RDMA selection.
- 🤝 **OpenAI API Server and vLLM Compatible**: One-command deployment with [vLLM](https://github.com/vllm-project/vllm/) interface compatibility.
- 🧮 **Comprehensive Quantization Format Support**: W8A16, W8A8, W4A16, W4A8, W2A16, FP8, and more.
- ⏩ **Advanced Acceleration Techniques**: Speculative decoding, Multi-Token Prediction (MTP) and Chunked Prefill.
- 🖥️ **Multi-Hardware Support**: NVIDIA GPU, Kunlunxin XPU, Hygon DCU, Iluvatar GPU, Enflame GCU, MetaX GPU, Intel Gaudi etc.

> For the complete project and full documentation, please refer to:
> - FastDeploy main repo: https://github.com/PaddlePaddle/FastDeploy

## Acknowledgement

FastDeploy is licensed under the [Apache-2.0 open-source license](./LICENSE). During development, portions of [vLLM](https://github.com/vllm-project/vllm) code were referenced and incorporated to maintain interface compatibility, for which we express our gratitude.
