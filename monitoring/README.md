# Kubernetes Monitoring

## Tools
- Prometheus: Collects application and Kubernetes metrics.
- Grafana: Displays metrics using dashboards.
- Helm: Installs and manages monitoring charts.

## Deployment Plan
1. Connect to the Amazon EKS cluster.
2. Configure kubectl access.
3. Add the Prometheus Community Helm repository.
4. Install the kube-prometheus-stack chart.
5. Access Grafana and verify the monitoring dashboards.