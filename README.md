# Microservices

An demo implementation of hybrid microservices architecture following a set of principles and best practices.

## Principles

- Hybrid microservices architecture
- Cloud Native support with monitoring, logging and tracing
- TDD & BDD for automated tests with code coverage
- Security compliance with best practices
- Follows Agile and DevOps principles including MVP and CI/CD
- Serves as in-depth step-by-step guide for developers with the same requirements

## Repository structure

### Content

Consists of a flat structure with the following subdirectories:

```bash
📁 microservices
 ├── 📁 .* (CI/CD or related files as .dot-files) 
 ├── 📁 docs (Documentation for this project)
 ├── 📁 api-gateway
 ├── 📁 auth-service
 ├── 📁 product-service
 ├── 📁 *-service (any extra service)
 ├── 📁 config (Deployment configuration YAML files for Kubernetes)
 ├── 📁 charts (Helm Charts)
 ├── 📁 tests (End-to-end tests)
 ├── 📄 README.md (This file)
```

*Guidelines for services*:
- Each service must work independently
- Each service must have its own automated tests (unit and integration)
- When adding a new service it is necessary to add its automated CI/CD configuration to avoid breaking builds following [Service Musts](#service-musts)



### Change history

Each change is done through a pull request and each milestone is tagged with a corresponding version.

## Service Musts

Below is a summary of the requirements for each service to be added to this repository:

*CI/CD Pipelines:*

- Unit tests & Code linting
- Build & Docker build
- Code scanning to SonarCloud
- Image scanning with Trivy
- Language based security scanning
- Kubernetes config & Helm Charts scanning for security issues
- Integration tests
- Deployment configuration to kubernetes using yaml / charts

*Deployment and operations:*

- Provide metrics for monitoring and logging
- Provide tracing for distributed tracing
- Provide health checks for liveness and readiness



## Development cycle

1. Fork/Branch from `main`
2. Work on the feature in branch/fork
3. Integrate into main using pull requests (Squash merge)
4. Each `feature` should always maintain working state and should be tagged when integrated into `main`. Continue to implement other features in the version roadmap
5. Once a `major.minor` goal is reached, a new `release-x.y` branch is created and a version is tagged
6. Continue with the next `major.minor` goal


## Milestones

Each `major.minor` will be integrated into `main` branch during 

### 0.1

*Features:*
1. **Basic repo setup with docs**: Must have clear instructions on project roadmap, must have a working documentation page 
automatically deployed to github pages, must have clear instructions on project development and delivery practices
2. **Basic infrastructure for monitoring, logging and tracing**: Must have working monitoring, logging and tracing
services deployed to kubernetes with terraform
3. **API Gateway**: Working API Gateway with static basic authentication that can be deployed to kubernetes
4. **Configuration & discovery services**: Basic structure for configuration and discovery services for microservices
5. **Auth Service**: Working OAuth2 Authentication service supporting user management and API Key authentication that can be deployed to kubernetes
6. **Product Service**: Working Product service catalog with basic CRUD operations that can be deployed to kubernetes
7. **Web UI**: Working login/registration page displaying a welcome page and a product catalog

### 0.2

*Features:*
7. **Order Service**: Working Order service with basic CRUD operations to store a list of orders for each user
8. **Notification Service**: Working Notification service with basic CRUD operations to notify users about changes in orders
9. **Payment Service**: Working Payment service with basic CRUD operations to create handle payment for user orders
10. **Web UI**: Working UI for API Gateway that allows to list and manage orders

### 0.3 

*Features:*
11. **Shipping Service**: Working Shipping service with basic CRUD operations to store shipping details for each order
12. **Review Service**: Working Review service with basic CRUD operations to store reviews for each product based on orders
13. **Web UI**: Integration with Review and Shipping services to display a complete order history for each user with reviews of each product