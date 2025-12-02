# FastDeploy Parameter Documentation

## 1. Required

These variables are necessary for FastDeploy to start correctly.

| Name | Type | Description | Example |
|------|------|-------------|---------|
| **`MODEL`** | string | Path or ID of the model to load and serve | `baidu/ERNIE-4.5-0.3B-Paddle` |

## 2. Common / Recommended (Optional, but frequently used)

These parameters are not strictly required, but in real use cases they are commonly adjusted for performance, memory usage, and GPU behavior.

| Name | Type | Description | Example |
|------|------|-------------|---------|
| `MAX_MODEL_LEN` | int | Maximum context length | `4096` |
| `QUANTIZATION` | string | Quantization method (`wint4`, `wint8`, etc.) | `wint4` |
| `TENSOR_PARALLEL_SIZE` | int | Number of GPUs (tensor parallel degree) | `1` |
| `GPU_MEMORY_UTILIZATION` | float | Fraction of GPU memory to use (0.0–1.0) | `0.9` |
| `MAX_NUM_SEQS` | int | Maximum concurrent decode sequences | `8` |

## 3. Advanced Configuration (Optional – for power users)

> For complete configuration options, see the [full configuration documentation](https://github.com/PaddlePaddle/FastDeploy/blob/develop/docs/parameters.md).
