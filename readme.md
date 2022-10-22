# complex docker project

This project is being configured to work with AWS Kubernetes

This project calculates the fibonacci sequence based on index. It uses the following services:
- Postgres
- Redis
- Worker
- ExpressJS
- Nginx
- React


### React (client)
Docker Image: jparkkennaby/complex-client
Front End service is used to display a form and the fibonacci sequence calculations already performed

### Nginx
Docker Image: jparkkennaby/complex-nginx
Used to control http requests from the React front end

### ExpressJS (server)
Docker Image: jparkkennaby/complex-server
Used to handle requests to both the Redis store and the Postgres database

### Worker
Docker Image: jparkkennaby/complex-worker
A servive using redis to handle the heavy computational process of calculating the fibonacci sequence

### Redis
Used a caching layer

### Postgres
Database in use to persist data




