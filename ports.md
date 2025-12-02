# Ports

FastDeploy uses the HTTP protocol.

Below are the service and internal ports used by FastDeploy:

| Parameter Name              | Type | Description                                         | Default |
|-----------------------------|------|-----------------------------------------------------|---------|
| `port`                      | int  | Only required for service deployment, HTTP service port number      | 8000    |
| `metrics_port`              | int  | Only required for service deployment, metrics monitoring port number | 8001    |
| `engine_worker_queue_port`  | int  | Internal engine communication port                  | 8002    |
| `cache_queue_port`          | int  | Internal KVCache process communication port         | 8003    |
