---
created: 2025-02-09
tags:
- monitoring
- logging
- tracing
- prometheus
- grafana
- jaeger
- loki
---

# Monitoring, Logging and Tracing

## Description

Adding basic configuration and infrastructure as code for monitoring, logging and tracing services in the project.

The following services will be added:
- Prometheus for Time Series Database
- Loki for Log Aggregation
- Jaeger for Distributed Tracing
- Grafana for Visualization

All of this deployed in a kubernetes cluster using terraform.


## Research

<!-- Research content or related articles and documentation -->

Most of the services choices done during this stage were merely based on experience in what is most used in the industry at the time of writing.

Other interesting alternatives are as follows:

### Grafana Stack

Replace some of the components with:

- Grafana Tempo: distributed tracing backend
- Grafana Mimir: Time Series Database

### ElasticSearch logging

- ElasticSearch: Logging and possibly tracing



## Design

The goal is to set a minimal configuration that can be deployed in local development environments without much hassle, and also could be adapted to a production environment, keeping it moslty compatible.

A default dashboard will be generated in Grafana to visualize:

- Cluster metrics
- Monitoring stack metrics

A base general purpose dashbord will be created to visualize collected data from all services:

- Logs
- Traces
- Metrics


## Tech Stack

<!-- list of technologies used -->

- Prometheus for Time Series Database
- Loki for Log Aggregation
- Jaeger for Distributed Tracing
- Grafana for Visualization
- Terraform for deployment

### Available options

1. [`Squareops terraform-kubernetes-grafana-stack`](https://github.com/squareops/terraform-kubernetes-grafana-stack): Given the monitoring goal, this would be a one-stop-shop fo almost all needs, missing only tracing that could be added later
2. [`kube-prometheus`](https://github.com/prometheus-operator/kube-prometheus): A robust solution for monitoring give ready-to-use configurations for `Prometheus`, `Grafana`, `Alertmanager` etc. Tracing and logging are missing and needed to be sorted later.
3. [`kube-prometheus-stack`](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack): A helm chart for `kube-prometheus-stack` that can be used to deploy the monitoring stack in a kubernetes cluster.
4. `Manual setup`: Gathering individual service charts/manifests and information individually for deploying and enabling each service in the cluster using their respective helm charts or manifests.:


### Implementation

One of the main goals of this project is induce learning and understanding of the tools and services used in the project. For this reason, the manual setup will be chosen to better understand the inner workings of each service and how they interact with each other.

The order of implementation will be as follows:

1. Prometheus deployment (chart/manifests)
2. Grafana deployment (chart/manifests)
3. Loki deployment (chart/manifests)
4. Jaeger deployment (chart/manifests)
5. Terraform abstraction for deployment


## Impact

<!-- Impact of this feature in the project -->

- Adds observability ability to the project making it easier to monitor and debug services


## Testing

<!-- How test should be implemented to ensure quality of the feature -->

Using local clusters like `docker desktop`, `orbstack` and `minikube` to deploy and test all monitoring services. Deploys a base `dummy` service to test data collection and visualization in Grafana.

## Security

<!-- Security impact and measures taken to improve or mitigate security issues -->

- Grafana should be accessed using a secure account in production and development.
- Prometheus metrics collection will be made secure using https and authentication.
- Logs will be collected by an agent that can stablish a secure connection to Loki.
- Services will use open telemetry to collect traces and send them to Jaeger securely using authentication.


## References

<!-- Any relevant articles, books, or links -->

- [Grafana mimir](https://grafana.com/oss/mimir/)
- [Grafana tempo](https://grafana.com/oss/tempo/)
- [Grafana loki](https://grafana.com/oss/loki/)
- [terraform-kubernetes-grafana-stack](https://github.com/squareops/terraform-kubernetes-grafana-stack)
- [Terraform](https://www.terraform.io/)
- [kube-prometheus](https://github.com/prometheus-operator/kube-prometheus)
- [kube-prometheus-stack](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack)