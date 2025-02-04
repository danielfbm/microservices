# Contribution guidelines

## Principles

- Hybrid microservices architecture
- Cloud Native support with monitoring, logging and tracing
- TDD & BDD for automated tests with code coverage
- Security compliance with best practices
- Follows Agile and DevOps principles including MVP and CI/CD
- Serves as in-depth step-by-step guide for developers with the same requirements


## Development cycle

1. Fork/Branch from `main`
2. Work on the feature in branch/fork
3. Integrate into main using pull requests (Squash merge)
4. Each `feature` should always maintain working state and should be tagged when integrated into `main`. Continue to implement other features in the version roadmap
5. Once a `major.minor` goal is reached, a new `release-x.y` branch is created and a version is tagged
6. Continue with the next `major.minor` goal


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


### Service Musts

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


## Documentation

Each and every change must be documented using current [docs](docs) and must be included in the pull request.

The documentation must be written in markdown and must include the following sections:

- **Description**: A short description of the feature
- **Tech Stack**: The tech stack used to implement the feature
- **Research**: Any research done to understand the feature
- **Design**: A detailed design of the feature including design decisions and tradeoffs 
- **Impact**: What is the impact of this feature
- **Testing**: How test should be implemented to ensure the feature
- **Security**: Security impact and measures taken to improve or mitigate security issues
- **References**: Any relevant articles, books, or links
