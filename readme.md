# complex docker project

This project is being configured to work with AWS Kubernetes

This project calculates the fibonacci sequence based on index. It uses the following services:
- Postgres
- Redis
- Worker
- ExpressJS
- React

### React (client)
Docker Image: jparkkennaby/complex-client
Front End service is used to display a form and the fibonacci sequence calculations already performed

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



## Development Services:

## Skaffold can be used for local developent
Skaffold is similar to minikube, although it can be used to handle live updates (sync of files). See the skaffold.yaml file

```
# run skaffold
$ skaffold dev

# stop skaffold
$ ctr + c
```

Note: skaffold.yaml file untested (I never installed skaffold to test)

### Nginx:
#### Used for docker-compose.yml route navigation (And the previous AWS Elastic Beanstork Configuration)
Docker Image: jparkkennaby/complex-nginx
Used to control http requests from the React front end


## TODO:
- minikube no longer working since letsencrypt changes - set up skaffold properly (skaffold init). Ensure:
    - dev deployments are not active
    - sync is enabled
- postgres service not working in PROD (Google Cloud Kubernetes). The service is running and requests to the service look correct. It looks like there is something wrong with the db configutation causing requests to /api/values/current to fail.


### Skaffold not running:
potential issue with running kubernetes (required) on OSX MOjave
https://github.com/docker/for-mac/issues/3327