# Microservices

An demo implementation of hybrid microservices architecture following a set of principles and best practices.

## Development and contribution 

Follow the [Contribution Guidelines](CONTRIBUTING.md) to understand how to contribute.


## Milestones

### 0.1

*Features:*

- [ ] **Basic repo setup with docs**: Must have clear instructions on project roadmap, must have a working documentation page 
automatically deployed to github pages, must have clear instructions on project development and delivery practices
- [ ] **Basic infrastructure for monitoring, logging and tracing**: Must have working monitoring, logging and tracing
services deployed to kubernetes with terraform
- [ ] **API Gateway**: Working API Gateway with static basic authentication that can be deployed to kubernetes
- [ ] **Configuration & discovery services**: Basic structure for configuration and discovery services for microservices
- [ ] **Auth Service**: Working OAuth2 Authentication service supporting user management and API Key authentication that can be deployed to kubernetes
- [ ] **Product Service**: Working Product service catalog with basic CRUD operations that can be deployed to kubernetes
- [ ] **Web UI**: Working login/registration page displaying a welcome page and a product catalog

### 0.2

*Features:*

- [ ] **Order Service**: Working Order service with basic CRUD operations to store a list of orders for each user
- [ ] **Notification Service**: Working Notification service with basic CRUD operations to notify users about changes in orders
- [ ] **Payment Service**: Working Payment service with basic CRUD operations to create handle payment for user orders
- [ ] **Web UI**: Working UI for API Gateway that allows to list and manage orders

### 0.3 

*Features:*

- [ ] **Shipping Service**: Working Shipping service with basic CRUD operations to store shipping details for each order
- [ ] **Review Service**: Working Review service with basic CRUD operations to store reviews for each product based on orders
- [ ] **Web UI**: Integration with Review and Shipping services to display a complete order history for each user with reviews of each product
